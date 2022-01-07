
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_LABEL_LDH ;
 int DNS_LABEL_NO_ESCAPES ;
 int EINVAL ;
 int assert_se (int) ;
 int dns_label_unescape (char const**,char*,size_t,int ) ;
 int log_info (char*,char const*,char const*,size_t,int,int) ;
 scalar_t__ strchr (char const*,char) ;
 int streq (char*,char const*) ;

__attribute__((used)) static void test_dns_label_unescape_one(const char *what, const char *expect, size_t buffer_sz, int ret, int ret_ldh) {
        char buffer[buffer_sz];
        int r;
        const char *w = what;

        log_info("%s, %s, %zu, →%d/%d", what, expect, buffer_sz, ret, ret_ldh);

        r = dns_label_unescape(&w, buffer, buffer_sz, 0);
        assert_se(r == ret);
        if (r >= 0)
                assert_se(streq(buffer, expect));

        w = what;
        r = dns_label_unescape(&w, buffer, buffer_sz, DNS_LABEL_LDH);
        assert_se(r == ret_ldh);
        if (r >= 0)
                assert_se(streq(buffer, expect));

        w = what;
        r = dns_label_unescape(&w, buffer, buffer_sz, DNS_LABEL_NO_ESCAPES);
        const int ret_noe = strchr(what, '\\') ? -EINVAL : ret;
        assert_se(r == ret_noe);
        if (r >= 0)
                assert_se(streq(buffer, expect));
}
