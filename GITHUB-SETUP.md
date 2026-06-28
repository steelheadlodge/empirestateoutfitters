# empirestateoutfitters.com — GitHub Pages (DNA)

Static landing page for Empire State Outfitters / DNA trail cameras.

## Repo structure
```
├── index.html
├── assets/
│   ├── logo-eso.png
│   └── hero-forest.jpg
├── CNAME
└── .nojekyll
```

## DNS — Network Solutions

Update DNS for `empirestateoutfitters.com` (keep **MX records** unchanged for email).

### A Records (@ — delete old `206.188.192.143`, add all four)
| Host | Points To       |
|------|-----------------|
| @    | 185.199.108.153 |
| @    | 185.199.109.153 |
| @    | 185.199.110.153 |
| @    | 185.199.111.153 |

### CNAME Record
| Host | Points To                   |
|------|-----------------------------|
| www  | steelheadlodge.github.io    |

After DNS propagates (up to 24h), GitHub issues free HTTPS.
Enable **Enforce HTTPS** in repo Settings → Pages once the cert is approved.

## Email
Do **not** change MX records — `andrew@empirestateoutfitters.com` stays on Network Solutions mail.
