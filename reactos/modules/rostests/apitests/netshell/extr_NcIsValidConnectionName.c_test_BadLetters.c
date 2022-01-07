
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ok (int,char*,int ,int) ;
 scalar_t__ pNcIsValidConnectionName (int*) ;
 int * wcspbrk (int*,char*) ;
 int wine_dbgstr_w (int*) ;

__attribute__((used)) static void test_BadLetters(void)
{
    BOOL ret;

    WCHAR buf[3] = { 0 };
    int i;

    for (i = 1; i <= 0xFFFF; ++i)
    {
        buf[0] = (WCHAR)i;
        buf[1] = buf[2] = L'\0';

        if (wcspbrk(buf, L"\\/:\t*? <>|\"") != ((void*)0))
        {
            ret = pNcIsValidConnectionName(buf);
            ok(ret == FALSE, "Expected %s (%i) to fail.\n", wine_dbgstr_w(buf), i);


            buf[1] = (WCHAR)i;
            ret = pNcIsValidConnectionName(buf);
            ok(ret == FALSE, "Expected %s (%i) to fail.\n", wine_dbgstr_w(buf), i);


            buf[1] = L' ';
            ret = pNcIsValidConnectionName(buf);
            ok(ret == FALSE, "Expected %s (%i) to fail.\n", wine_dbgstr_w(buf), i);



            buf[1] = L'a';
            ret = pNcIsValidConnectionName(buf);
            if ((WCHAR)i == L' ')
                ok(ret == TRUE, "Expected %s (%i) to succeed.\n", wine_dbgstr_w(buf), i);
            else
                ok(ret == FALSE, "Expected %s (%i) to fail.\n", wine_dbgstr_w(buf), i);
        }
        else
        {
            ret = pNcIsValidConnectionName(buf);
            ok(ret == TRUE, "Expected %s (%i) to succeed.\n", wine_dbgstr_w(buf), i);

            buf[1] = (WCHAR)i;
            ret = pNcIsValidConnectionName(buf);
            ok(ret == TRUE, "Expected %s (%i) to succeed.\n", wine_dbgstr_w(buf), i);

            buf[1] = L'a';
            ret = pNcIsValidConnectionName(buf);
            ok(ret == TRUE, "Expected %s (%i) to succeed.\n", wine_dbgstr_w(buf), i);

            buf[1] = L' ';
            ret = pNcIsValidConnectionName(buf);
            ok(ret == TRUE, "Expected %s (%i) to succeed.\n", wine_dbgstr_w(buf), i);
        }
    }
}
