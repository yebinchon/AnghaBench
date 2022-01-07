
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_dnssec_canonicalize () ;
 int test_dnssec_nsec3_hash () ;
 int test_dnssec_verify_dns_key () ;
 int test_dnssec_verify_rfc8080_ed25519_example1 () ;
 int test_dnssec_verify_rfc8080_ed25519_example2 () ;
 int test_dnssec_verify_rrset () ;
 int test_dnssec_verify_rrset2 () ;

int main(int argc, char *argv[]) {

        test_dnssec_canonicalize();
        return 0;
}
