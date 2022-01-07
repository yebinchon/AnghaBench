
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct test_color {int dummy; } ;
typedef int pfd ;
struct TYPE_3__ {int dwFlags; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int * HWND ;
typedef int HDC ;


 int ARRAY_SIZE (int *) ;
 int * CreateWindowA (char*,char*,int ,int,int,int,int,int *,int *,int *,int *) ;
 int DescribePixelFormat (int ,int,int,TYPE_1__*) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int GetDC (int *) ;
 int PFD_GENERIC_FORMAT ;
 int ReleaseDC (int *,int ) ;
 int TRUE ;
 int WS_OVERLAPPEDWINDOW ;
 int ok (int,char*,...) ;
 int * test_depths ;
 int test_format (int ,int,int ,struct test_color const*,int ,int ,int ) ;

__attribute__((used)) static void test_screen_colors(const struct test_color **colors)
{
    int pf, num_pf, ret;
    int i, j;
    HDC hdc;
    HWND hwnd;
    PIXELFORMATDESCRIPTOR pfd;

    hwnd = CreateWindowA("static", "Title", WS_OVERLAPPEDWINDOW, 10, 10, 200, 200, ((void*)0), ((void*)0),
            ((void*)0), ((void*)0));
    if (!hwnd)
    {
        ok(hwnd != ((void*)0), "Failed to create a window.\n");
        return;
    }

    hdc = GetDC( hwnd );
    num_pf = DescribePixelFormat(hdc, 0, 0, ((void*)0));
    ok(num_pf > 0, "DescribePixelFormat failed.\n");

    for (pf = 1; pf <= num_pf; pf++)
    {
        ret = DescribePixelFormat(hdc, pf, sizeof(pfd), &pfd);
        ok(ret == num_pf, "Number of pixel formats changed!\n");

        if (pfd.dwFlags & PFD_GENERIC_FORMAT)
            break;
    }

    ok(pf < num_pf, "No generic pixel format!\n");


    for (i = 0; i < 3; i++)
    {

        for (j = 0; j < ARRAY_SIZE(test_depths); j++)
        {
            test_format(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, FALSE);
        }


        for (j = 0; j < ARRAY_SIZE(test_depths); j++)
        {
            test_format(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, TRUE);
        }
    }

    colors++;


    while (*colors)
    {
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < ARRAY_SIZE(test_depths); j++)
            {
                test_format(hdc, num_pf, pf++, &colors[0][i], test_depths[j], FALSE, FALSE);
            }
        }
        colors++;
    }


    ok(pf - 1 == num_pf, "We didn't test all generic formats : tested %u, total %u.\n", pf, num_pf);

    ReleaseDC( hwnd, hdc );
    DestroyWindow( hwnd );
}
