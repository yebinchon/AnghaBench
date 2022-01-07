
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int buf ;


 int FORMAT_TIMESTAMP_MAX ;
 int assert_se (int ) ;
 char* format_timestamp_utc (char*,int,int ) ;
 int streq_ptr (char const*,char const*) ;

__attribute__((used)) static void test_format_timestamp_utc_one(usec_t val, const char *result) {
        char buf[FORMAT_TIMESTAMP_MAX];
        const char *t;

        t = format_timestamp_utc(buf, sizeof(buf), val);
        assert_se(streq_ptr(t, result));
}
