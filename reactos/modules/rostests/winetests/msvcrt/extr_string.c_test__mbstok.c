
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* _mbstok (int *,unsigned char const*) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,unsigned char*,...) ;
 int strtok (char*,char*) ;

__attribute__((used)) static void test__mbstok(void)
{
    const unsigned char delim[] = "t";

    char str[] = "!.!test";
    unsigned char *ret;

    strtok(str, "!");

    ret = _mbstok(((void*)0), delim);

    ok(!ret || broken((char*)ret==str+4),
            "_mbstok(NULL, \"t\") = %p, expected NULL (%p)\n", ret, str);

    ret = _mbstok(((void*)0), delim);
    ok(!ret, "_mbstok(NULL, \"t\") = %p, expected NULL\n", ret);
}
