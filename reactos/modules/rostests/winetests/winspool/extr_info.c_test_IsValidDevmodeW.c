
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEVMODEW ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pIsValidDevmodeW (int *,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_IsValidDevmodeW(void)
{
    BOOL br;

    if (!pIsValidDevmodeW)
    {
        win_skip("IsValidDevmodeW not implemented.\n");
        return;
    }

    br = pIsValidDevmodeW(((void*)0), 0);
    ok(br == FALSE, "Got %d\n", br);

    br = pIsValidDevmodeW(((void*)0), 1);
    ok(br == FALSE, "Got %d\n", br);

    br = pIsValidDevmodeW(((void*)0), sizeof(DEVMODEW));
    ok(br == FALSE, "Got %d\n", br);
}
