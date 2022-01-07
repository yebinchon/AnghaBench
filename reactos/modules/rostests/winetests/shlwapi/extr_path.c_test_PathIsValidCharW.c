
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int * SHELL_charclass ;
 int ok (int,char*,unsigned int,int) ;
 int pPathIsValidCharW (unsigned int,unsigned int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_PathIsValidCharW(void)
{
    BOOL ret;
    unsigned int c;

    if (!pPathIsValidCharW)
    {
        win_skip("PathIsValidCharW isn't available\n");
        return;
    }

    for (c = 0; c < 0x7f; c++)
    {
        ret = pPathIsValidCharW( c, ~0U );
        ok ( ret || !SHELL_charclass[c], "PathIsValidCharW failed: 0x%02x got 0x%08x\n", c, ret );
    }

    for (c = 0x007f; c <= 0xffff; c++)
    {
        ret = pPathIsValidCharW( c, ~0U );
        ok ( ret, "PathIsValidCharW failed: 0x%02x got 0x%08x\n", c, ret );
    }
}
