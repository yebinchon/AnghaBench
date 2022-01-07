
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok (int,char*,unsigned int) ;
 unsigned int pUFromSz (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UFromSz(void)
{
    if (!pUFromSz)
    {
        win_skip("UFromSz is not available\n");
        return;
    }

    ok(pUFromSz("105679") == 105679u,
       "UFromSz: expected 105679, got %d\n", pUFromSz("105679"));

    ok(pUFromSz(" 4") == 0, "UFromSz: expected 0. got %d\n",
       pUFromSz(" 4"));
}
