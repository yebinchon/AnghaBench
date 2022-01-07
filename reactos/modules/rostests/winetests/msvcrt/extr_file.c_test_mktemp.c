
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _mktemp (char*) ;
 int ok (int,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_mktemp(void)
{
    char buf[16];

    strcpy(buf, "a");
    ok(!_mktemp(buf), "_mktemp(\"a\") != NULL\n");

    strcpy(buf, "testXXXXX");
    ok(!_mktemp(buf), "_mktemp(\"testXXXXX\") != NULL\n");

    strcpy(buf, "testXXXXXX");
    ok(_mktemp(buf) != ((void*)0), "_mktemp(\"testXXXXXX\") == NULL\n");

    strcpy(buf, "testXXXXXXa");
    ok(!_mktemp(buf), "_mktemp(\"testXXXXXXa\") != NULL\n");

    strcpy(buf, "**XXXXXX");
    ok(_mktemp(buf) != ((void*)0), "_mktemp(\"**XXXXXX\") == NULL\n");
}
