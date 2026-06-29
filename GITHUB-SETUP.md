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

### Must delete (old Network Solutions hosting)
Remove **every** record still pointing at `206.188.192.143`:
| Type | Host | Delete |
|------|------|--------|
| A | `@` | `206.188.192.143` |
| A | `www` | `206.188.192.143` |
| A | `*` | `206.188.192.143` |

If the old `@` record remains, nameservers flip between old and new — half your visitors see the stale site.

### A Records (@ — add all four GitHub Pages IPs)
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
**Enforce HTTPS** is on in repo Settings → Pages.

### Mac still shows old site?
Network Solutions or your router may cache the old IP. Run once (prompts for password):
```bash
bash scripts/fix-local-dns.sh
```

## Email
Do **not** change MX records — `andrew@empirestateoutfitters.com` stays on Network Solutions mail.
