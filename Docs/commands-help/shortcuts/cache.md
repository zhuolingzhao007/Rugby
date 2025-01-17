[< 📍 Shortcuts](../shortcuts.md)

# 🏈 Cache

```sh
> rugby shortcuts cache --help
```

```sh

 > Run the build and use commands.

 Options:
╭────────────────────────────────────────────────────────────────────────────────╮
│ --warmup                   * Warmup cache with this endpoint.                  │
│ -s, --sdk                  * Build SDK: sim or ios.                            │
│ -a, --arch                 * Build architecture: auto, x86_64 or arm64.        │
│ -c, --config               * Build configuration. (Debug)                      │
│ -t, --targets []           * Targets for building. Empty means all targets.    │
│ -g, --targets-as-regex []  * Targets for building as a RegEx pattern.          │
│ -e, --except []            * Exclude targets from building.                    │
│ -x, --except-as-regex []   * Exclude targets from building as a RegEx pattern. │
│ --result-bundle-path       * Path to xcresult bundle.                          │
│ -o, --output               * Output mode: fold, multiline, silent, raw.        │
╰────────────────────────────────────────────────────────────────────────────────╯
 Flags:
╭─────────────────────────────────────────────────────────────────────────╮
│ -r, --rollback    * Restore projects state before the last Rugby usage. │
│ --prebuild        * Prebuild targets ignoring sources.                  │
│ --strip           * Build without debug symbols.                        │
│ --ignore-cache    * Ignore shared cache.                                │
│ --delete-sources  * Delete target groups from project.                  │
│ -v, --verbose []  * Increase verbosity level.                           │
│ -q, --quiet []    * Decrease verbosity level.                           │
│ -h, --help        * Show help information.                              │
╰─────────────────────────────────────────────────────────────────────────╯
```

## Discussion

It just a combination of exist commands. You can call them separately:
```sh
> rugby rollback
> rugby build pre --except SomePod --arch x86_64
> rugby warmup s3.eu-west-2.amazonaws.com --except SomePod --arch x86_64
> rugby build full --except SomePod --arch x86_64
> rugby use --except SomePod
```

Or just use cache shortcut:
```sh
> rugby cache --rollback --prebuild --warmup s3.eu-west-2.amazonaws.com --except SomePod --arch x86_64
```

When you use cache or [plan](../plan.md) commands Rugby tries to reuse project cache.\
In huge projects it can save tens of seconds.
