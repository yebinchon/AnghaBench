
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FORMAT_BYTES_BELOW_POINT ;
 int FORMAT_BYTES_MAX ;
 int FORMAT_BYTES_TRAILING_B ;
 int FORMAT_BYTES_USE_IEC ;
 int assert_se (int ) ;
 int format_bytes_full (char*,int,int ,int) ;
 int streq_ptr (int ,char const*) ;

__attribute__((used)) static void test_format_bytes_one(uint64_t val, bool trailing_B, const char *iec_with_p, const char *iec_without_p,
                                  const char *si_with_p, const char *si_without_p) {
        char buf[FORMAT_BYTES_MAX];

        assert_se(streq_ptr(format_bytes_full(buf, sizeof buf, val, FORMAT_BYTES_USE_IEC | FORMAT_BYTES_BELOW_POINT | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), iec_with_p));
        assert_se(streq_ptr(format_bytes_full(buf, sizeof buf, val, FORMAT_BYTES_USE_IEC | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), iec_without_p));
        assert_se(streq_ptr(format_bytes_full(buf, sizeof buf, val, FORMAT_BYTES_BELOW_POINT | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), si_with_p));
        assert_se(streq_ptr(format_bytes_full(buf, sizeof buf, val, trailing_B ? FORMAT_BYTES_TRAILING_B : 0), si_without_p));
}
