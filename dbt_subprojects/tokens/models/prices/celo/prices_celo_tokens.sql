{{ config(
        schema='prices_celo',
        alias='tokens',
        materialized='table',
        file_format='delta',
        tags=['static']
        )
}}

SELECT 
    token_id
    , blockchain
    , symbol
    , contract_address
    , decimals
FROM
(
    VALUES
    ('cusd-celo-dollar', 'celo', 'cUSD', 0x765de816845861e75a25fca122bb6898b8b1282a, 18),
    ('ceur-celo-euro', 'celo', 'cEUR', 0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73, 18), --requested add to coinPaprika 2023-08-10
    ('creal-celo-brazilian-real', 'celo', 'cREAL', 0xe8537a3d056DA446677B9E9d6c5dB704EaAb4787, 18),
    ('ico-axelar', 'celo', 'AXL', 0x23ee2343B892b1BB63503a4FAbc840E0e2C6810f, 6), --requested add to coinPaprika 2023-08-10
    --('mimatic-mimatic', 'celo', 'MAI', 0xb9c8f0d3254007ee4b98970b94544e473cd610ec, 18), --requested add to coinPaprika 2023-08-10
    ('wbtc-wrapped-bitcoin', 'celo', 'BTC', 0xd629eb00deced2a080b7ec630ef6ac117e614f1b, 18),
    ('bifi-beefyfinance', 'celo', 'BIFI', 0x639A647fbe20b6c8ac19E48E2de44ea792c62c5C, 18),
    --('ftm-fantom', 'celo', 'FTM', 0x218c3c3d49d0e7b37aff0d8bb079de36ae61a4c0, 18), --requested add to coinPaprika 2023-08-10
    --('weth-weth', 'celo', 'WETH', 0x122013fd7dF1C6F636a5bb8f03108E876548b455, 18), --requested add to coinPaprika 2023-08-10
    --('ube-ubeswap', 'celo', 'UBE', 0x00Be915B9dCf56a3CBE739D9B9c202ca692409EC, 18) --low volume
    ('wftm-wrapped-fantom', 'celo', 'FTM', 0x218c3c3d49d0e7b37aff0d8bb079de36ae61a4c0, 18),
    ('sushi-sushi', 'celo', 'SUSHI', 0xd15ec721c2a896512ad29c671997dd68f9593226, 18),
    ('pact-impactmarket', 'celo', 'PACT', 0x46c9757c5497c5b1f2eb73ae79b6b67d119b0b58, 18),
    ('usdc-usd-coin', 'celo', 'USDC', 0xceba9300f2b948710d2653dd7b07f33a8b32118c, 6),
    ('usdt-tether', 'celo', 'USD₮', 0x48065fbbe25f71c9282ddf5e1cd6d6a887483d5e, 6),
    ('plastik-plastiks', 'celo', 'PLASTIK', 0x27cd006548df7c8c8e9fdc4a67fa05c2e3ca5cf9, 9),
    ('scelo-savings-celo', 'celo', 'sCELO', 0x2879bfd5e7c4ef331384e908aaa3bd3014b703fa, 18),
    ('btcbr-bitcoinbr', 'celo', 'BTCBR', 0xe9dc987b939a7b33270e56532297cf82716c79a3, 18),
    ('usdglo-glo-dollar', 'celo', 'USDGLO', 0x4f604735c1cf31399c6e711d5962b2b3e0225ad3, 18),
    ('abr-allbridge', 'celo', 'ABR', 0x6e512bfc33be36f2666754e996ff103ad1680cc9, 18),
    ('weth-wormhole-weth-celo', 'celo', 'WETH', 0x66803FB87aBd4aaC3cbB3fAd7C3aa01f6F3FB207, 18),
    ('g-gooddollar', 'celo', 'G$', 0x62b8b11039fcfe5ab0c56e502b1c372a3d2a9c7a, 18),
    --('ckes-celo-kenyan-shilling', 'celo', 'cKES', 0x456a3d042c0dbd3db53d5489e98dfb038553b0d0, 18),
    ('char-biochar', 'celo', 'CHAR', 0x50e85c754929840b58614f48e29c64bc78c58345, 18),
    ('brla-brla-digital-brla', 'celo', 'BRLA', 0xfecb3f7c54e2caae9dc6ac9060a822d47e053760, 18)
) as temp (token_id, blockchain, symbol, contract_address, decimals)
