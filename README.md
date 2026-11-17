# rhc-advisor-collector-selinux

SELinux policy for the `com.redhat.advisor` collector entrypoint.

The module name is `rhc_advisor_collector`. It adds
`rhc_collector_advisor_exec_t` and the file context for
`/usr/libexec/rhc/collectors/com.redhat.advisor`, then transitions
`rhc_collector_t` into the existing `insights_core_t` domain.
Collection permissions stay in the `insights_core` module shipped by
`insights-core-selinux`.

The RPM is built from the spec in
[rhc-advisor-collector](https://github.com/RedHatInsights/rhc-advisor-collector)
as the `rhc-advisor-collector-selinux` subpackage. This repository is Source1
of that spec.

## License

Apache-2.0. See [LICENSE](LICENSE).
