
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int assert (int) ;
 int strcmp (char*,char*) ;
 size_t xstrncpy (char*,char*,int) ;

__attribute__((used)) static void test_xstrncpy_just_fit(void) {
    char s[] = "xxxxxx";
    size_t w = xstrncpy(s, "abcdef", sizeof(s));


    assert(w == 6);


    assert(s[6] == '\0');


    assert(!strcmp("abcdef", s));
}
