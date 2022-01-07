
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int SQLValidDSN (char*) ;
 int ok (int,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_SQLValidDSN(void)
{
    static const char *invalid = "[]{}(),;?*=!@\\";
    char str[10];
    int i;
    BOOL ret;

    strcpy(str, "wine10");
    for(i = 0; i < strlen(invalid); i++)
    {
        str[4] = invalid[i];
        ret = SQLValidDSN(str);
        ok(!ret, "got %d\n", ret);
    }


    ret = SQLValidDSN("Wine123456789012345678901234567890");
    ok(!ret, "got %d\n", ret);


    ret = SQLValidDSN("Wine Vinegar");
    ok(ret, "got %d\n", ret);


    ret = SQLValidDSN("12345678901234567890123456789012");
    ok(ret, "got %d\n", ret);
}
