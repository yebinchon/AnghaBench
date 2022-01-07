
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int assert (int) ;
 int strncmp (char*,char*,int) ;
 size_t xstrncpy (char*,char*,int) ;

__attribute__((used)) static void test_xstrncpy_truncated(void) {
    char s[] = "xxx";
    size_t w = xstrncpy(s, "abcdef", sizeof(s));


    assert(w == 4);


    assert(s[3] == '\0');


    assert(!strncmp("abcdef", s, 3));
}
