
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,int,scalar_t__,int ,char const*) ;
 scalar_t__ pCredIsMarshaledCredentialA (char const*) ;

__attribute__((used)) static void test_CredIsMarshaledCredentialA(void)
{
    int i;
    BOOL res;
    BOOL expected = TRUE;

    const char * ptr[] = {

        "@@BXlmblBAAAAAAAAAAAAAAAAAAAAA",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA",


        "@@CCAAAAA0BA",
        "@@CIAAAAA0BQZAMHA0BA",




        "winetest",
        "",
        "@@",
        "@@A",
        "@@AA",
        "@@AAA",
        "@@B",
        "@@BB",
        "@@BBB",


        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA+",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA:",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA>",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA<",

        "@@C",
        "@@CC",
        "@@CCC",
        "@@D",
        "@@DD",
        "@@DDD",
        ((void*)0)};

    for (i = 0; ptr[i]; i++)
    {
        if (*ptr[i] != '@')
            expected = FALSE;

        SetLastError(0xdeadbeef);
        res = pCredIsMarshaledCredentialA(ptr[i]);
        if (expected)
            ok(res != FALSE, "%d: got %d and %u for %s (expected TRUE)\n", i, res, GetLastError(), ptr[i]);
        else
        {

            ok(!res, "%d: got %d and %u for %s (expected FALSE)\n", i, res, GetLastError(), ptr[i]);
        }
    }
}
