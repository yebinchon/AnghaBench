
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* haystack ;
 int test (char*,char*,int,int) ;

int main(void)
{
    test( haystack, "Lorem", 0, 1 );
    test( haystack, "Sea Otters", 0, 0 );
    test( haystack, "", 0, 1 );
    test( haystack, "Lorem ipsum dolor sit amet, but bigger", 0, 0 );
    test( haystack, haystack, 0, 1 );
    test( haystack, "amet", 0, 1 );
    test( haystack, "dolor", 5, 0 );
}
