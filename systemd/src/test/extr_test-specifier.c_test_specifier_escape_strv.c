
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * STRV_MAKE (char*,...) ;
 int test_specifier_escape_strv_one (int *,int *) ;

__attribute__((used)) static void test_specifier_escape_strv(void) {
        test_specifier_escape_strv_one(((void*)0), ((void*)0));
        test_specifier_escape_strv_one(STRV_MAKE(((void*)0)), STRV_MAKE(((void*)0)));
        test_specifier_escape_strv_one(STRV_MAKE(""), STRV_MAKE(""));
        test_specifier_escape_strv_one(STRV_MAKE("foo"), STRV_MAKE("foo"));
        test_specifier_escape_strv_one(STRV_MAKE("%"), STRV_MAKE("%%"));
        test_specifier_escape_strv_one(STRV_MAKE("foo", "%", "foo%", "%foo", "foo%foo", "quux", "%%%"), STRV_MAKE("foo", "%%", "foo%%", "%%foo", "foo%%foo", "quux", "%%%%%%"));
}
