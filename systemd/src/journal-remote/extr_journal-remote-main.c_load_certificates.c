
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CERT_FILE ;
 int EINVAL ;
 int PRIV_KEY_FILE ;
 int SYNTHETIC_ERRNO (int ) ;
 int TRUST_FILE ;
 scalar_t__ arg_cert ;
 scalar_t__ arg_key ;
 scalar_t__ arg_listen_http ;
 scalar_t__ arg_listen_raw ;
 scalar_t__ arg_trust ;
 scalar_t__ arg_trust_all ;
 int log_error_errno (int,char*,...) ;
 int log_info (char*) ;
 int read_full_file (int ,char**,int *) ;

__attribute__((used)) static int load_certificates(char **key, char **cert, char **trust) {
        int r;

        r = read_full_file(arg_key ?: PRIV_KEY_FILE, key, ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to read key from file '%s': %m",
                                       arg_key ?: PRIV_KEY_FILE);

        r = read_full_file(arg_cert ?: CERT_FILE, cert, ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to read certificate from file '%s': %m",
                                       arg_cert ?: CERT_FILE);

        if (arg_trust_all)
                log_info("Certificate checking disabled.");
        else {
                r = read_full_file(arg_trust ?: TRUST_FILE, trust, ((void*)0));
                if (r < 0)
                        return log_error_errno(r, "Failed to read CA certificate file '%s': %m",
                                               arg_trust ?: TRUST_FILE);
        }

        if ((arg_listen_raw || arg_listen_http) && *trust)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Option --trust makes all non-HTTPS connections untrusted.");

        return 0;
}
