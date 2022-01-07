
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ broken (int) ;
 int lstrlenA (char const*) ;
 int ok (int,char*,...) ;
 int p__snprintf (char*,int,char const*) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void test__snprintf(void)
{
    const char *origstring = "XXXXXXXXXXXX";
    const char *teststring = "hello world";
    char buffer[32];
    int res;

    res = p__snprintf(((void*)0), 0, teststring);
    ok(res == lstrlenA(teststring) || broken(res == -1) ,
       "_snprintf returned %d, expected %d.\n", res, lstrlenA(teststring));

    if (res != -1)
    {
        res = p__snprintf(((void*)0), 1, teststring);
        ok(res == lstrlenA(teststring) || res < 0 ,
           "_snprintf returned %d, expected %d or < 0.\n", res, lstrlenA(teststring));
    }
    res = p__snprintf(buffer, strlen(teststring) - 1, teststring);
    ok(res < 0, "_snprintf returned %d, expected < 0.\n", res);

    strcpy(buffer, origstring);
    res = p__snprintf(buffer, strlen(teststring), teststring);
    ok(res == lstrlenA(teststring), "_snprintf returned %d, expected %d.\n", res, lstrlenA(teststring));
    ok(!strcmp(buffer, "hello worldX"), "_snprintf returned buffer '%s', expected 'hello worldX'.\n", buffer);

    strcpy(buffer, origstring);
    res = p__snprintf(buffer, strlen(teststring) + 1, teststring);
    ok(res == lstrlenA(teststring), "_snprintf returned %d, expected %d.\n", res, lstrlenA(teststring));
    ok(!strcmp(buffer, teststring), "_snprintf returned buffer '%s', expected '%s'.\n", buffer, teststring);
}
