
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int DNSSEC_RESULT ;
 int DNSSEC_VERDICT ;
 int DNS_PROTOCOL ;
 int DNS_RCODE ;
 int DNS_TYPE ;
 int EXIT_SUCCESS ;
 scalar_t__ _DNS_CLASS_MAX ;
 scalar_t__ _DNS_CLASS_STRING_MAX ;
 scalar_t__ _DNS_TYPE_MAX ;
 scalar_t__ _DNS_TYPE_STRING_MAX ;
 int assert_se (int) ;
 scalar_t__ dns_class_is_pseudo (scalar_t__) ;
 scalar_t__ dns_class_is_valid_rr (scalar_t__) ;
 char* dns_class_to_string (scalar_t__) ;
 int dns_protocol ;
 int dns_rcode ;
 int dns_type ;
 scalar_t__ dns_type_apex_only (scalar_t__) ;
 scalar_t__ dns_type_is_dnssec (scalar_t__) ;
 scalar_t__ dns_type_is_obsolete (scalar_t__) ;
 scalar_t__ dns_type_is_pseudo (scalar_t__) ;
 scalar_t__ dns_type_is_valid_query (scalar_t__) ;
 scalar_t__ dns_type_is_valid_rr (scalar_t__) ;
 scalar_t__ dns_type_may_redirect (scalar_t__) ;
 scalar_t__ dns_type_may_wildcard (scalar_t__) ;
 scalar_t__ dns_type_needs_authentication (scalar_t__) ;
 char* dns_type_to_string (scalar_t__) ;
 int dnssec_result ;
 int dnssec_verdict ;
 int log_info (char*,...) ;
 scalar_t__ strlen (char const*) ;
 int test_table (int ,int ) ;
 int test_table_sparse (int ,int ) ;

int main(int argc, char **argv) {
        uint16_t i;

        test_table(dns_protocol, DNS_PROTOCOL);
        test_table(dnssec_result, DNSSEC_RESULT);
        test_table(dnssec_verdict, DNSSEC_VERDICT);

        test_table_sparse(dns_rcode, DNS_RCODE);
        test_table_sparse(dns_type, DNS_TYPE);

        log_info("/* DNS_TYPE */");
        for (i = 0; i < _DNS_TYPE_MAX; i++) {
                const char *s;

                s = dns_type_to_string(i);
                assert_se(s == ((void*)0) || strlen(s) < _DNS_TYPE_STRING_MAX);

                if (s)
                        log_info("%-*s %s%s%s%s%s%s%s%s%s",
                                 (int) _DNS_TYPE_STRING_MAX - 1, s,
                                 dns_type_is_pseudo(i) ? "pseudo " : "",
                                 dns_type_is_valid_query(i) ? "valid_query " : "",
                                 dns_type_is_valid_rr(i) ? "is_valid_rr " : "",
                                 dns_type_may_redirect(i) ? "may_redirect " : "",
                                 dns_type_is_dnssec(i) ? "dnssec " : "",
                                 dns_type_is_obsolete(i) ? "obsolete " : "",
                                 dns_type_may_wildcard(i) ? "wildcard " : "",
                                 dns_type_apex_only(i) ? "apex_only " : "",
                                 dns_type_needs_authentication(i) ? "needs_authentication" : "");
        }

        log_info("/* DNS_CLASS */");
        for (i = 0; i < _DNS_CLASS_MAX; i++) {
                const char *s;

                s = dns_class_to_string(i);
                assert_se(s == ((void*)0) || strlen(s) < _DNS_CLASS_STRING_MAX);

                if (s)
                        log_info("%-*s %s%s",
                                 (int) _DNS_CLASS_STRING_MAX - 1, s,
                                 dns_class_is_pseudo(i) ? "is_pseudo " : "",
                                 dns_class_is_valid_rr(i) ? "is_valid_rr " : "");
        }

        return EXIT_SUCCESS;
}
