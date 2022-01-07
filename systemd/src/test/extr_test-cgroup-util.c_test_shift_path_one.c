
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ cg_shift_path (char const*,char const*,char const**) ;
 int streq (char const*,char const*) ;

__attribute__((used)) static void test_shift_path_one(const char *raw, const char *root, const char *shifted) {
        const char *s = ((void*)0);

        assert_se(cg_shift_path(raw, root, &s) >= 0);
        assert_se(streq(s, shifted));
}
