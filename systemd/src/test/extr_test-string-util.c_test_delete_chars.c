
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITESPACE ;
 int assert_se (int) ;
 char* delete_chars (char*,int ) ;
 int streq (char*,char*) ;

__attribute__((used)) static void test_delete_chars(void) {
        char *s, input[] = "   hello, waldo.   abc";

        s = delete_chars(input, WHITESPACE);
        assert_se(streq(s, "hello,waldo.abc"));
        assert_se(s == input);
}
