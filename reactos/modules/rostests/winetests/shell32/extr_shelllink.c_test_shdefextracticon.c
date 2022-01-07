
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int * HICON ;


 int DestroyIcon (int *) ;
 int MAKELONG (int,int) ;
 int SUCCEEDED (int ) ;
 int ok (int ,char*,...) ;
 int pSHDefExtractIconA (char*,int ,int ,int **,int **,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_shdefextracticon(void)
{
    HICON hiconlarge=((void*)0), hiconsmall=((void*)0);
    HRESULT res;

    if (!pSHDefExtractIconA)
    {
        win_skip("SHDefExtractIconA is unavailable\n");
        return;
    }

    res = pSHDefExtractIconA("shell32.dll", 0, 0, &hiconlarge, &hiconsmall, MAKELONG(16,24));
    ok(SUCCEEDED(res), "SHDefExtractIconA failed, res=%x\n", res);
    ok(hiconlarge != ((void*)0), "got null hiconlarge\n");
    ok(hiconsmall != ((void*)0), "got null hiconsmall\n");
    DestroyIcon(hiconlarge);
    DestroyIcon(hiconsmall);

    hiconsmall = ((void*)0);
    res = pSHDefExtractIconA("shell32.dll", 0, 0, ((void*)0), &hiconsmall, MAKELONG(16,24));
    ok(SUCCEEDED(res), "SHDefExtractIconA failed, res=%x\n", res);
    ok(hiconsmall != ((void*)0), "got null hiconsmall\n");
    DestroyIcon(hiconsmall);

    res = pSHDefExtractIconA("shell32.dll", 0, 0, ((void*)0), ((void*)0), MAKELONG(16,24));
    ok(SUCCEEDED(res), "SHDefExtractIconA failed, res=%x\n", res);
}
