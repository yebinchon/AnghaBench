
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int canonicalized ;


 int DNSSEC_CANONICAL_HOSTNAME_MAX ;
 int assert_se (int) ;
 int dnssec_canonicalize (char const*,char*,int) ;
 int streq (char*,char const*) ;

__attribute__((used)) static void test_dnssec_canonicalize_one(const char *original, const char *canonical, int r) {
        char canonicalized[DNSSEC_CANONICAL_HOSTNAME_MAX];

        assert_se(dnssec_canonicalize(original, canonicalized, sizeof(canonicalized)) == r);
        if (r < 0)
                return;

        assert_se(streq(canonicalized, canonical));
}
