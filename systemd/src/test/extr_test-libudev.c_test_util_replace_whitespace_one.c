
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int test_util_replace_whitespace_one_len (char const*,int ,char const*) ;

__attribute__((used)) static void test_util_replace_whitespace_one(const char *str, const char *expected) {
        test_util_replace_whitespace_one_len(str, strlen(str), expected);
}
