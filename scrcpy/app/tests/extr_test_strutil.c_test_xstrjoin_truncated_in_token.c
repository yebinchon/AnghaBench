
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int assert (int) ;
 int strcmp (char*,char*) ;
 size_t xstrjoin (char*,char const* const*,char,int) ;

__attribute__((used)) static void test_xstrjoin_truncated_in_token(void) {
    const char *const tokens[] = { "abc", "de", "fghi", ((void*)0) };
    char s[] = "xxxxx";
    size_t w = xstrjoin(s, tokens, ' ', sizeof(s));


    assert(w == 6);


    assert(s[5] == '\0');


    assert(!strcmp("abc d", s));
}
