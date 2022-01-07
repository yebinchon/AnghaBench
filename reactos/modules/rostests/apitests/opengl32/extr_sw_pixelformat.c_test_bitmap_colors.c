
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct test_color {int dummy; } ;
typedef int pfd ;
struct TYPE_3__ {int dwFlags; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int INT ;
typedef int HDC ;


 int ARRAY_SIZE (int *) ;
 int DescribePixelFormat (int ,int,int,TYPE_1__*) ;
 int FALSE ;
 int PFD_GENERIC_FORMAT ;
 int TRUE ;
 int ok (int,char*,...) ;
 int * test_depths ;
 int test_format (int ,int,int ,struct test_color const*,int ,int ,int ) ;

__attribute__((used)) static void test_bitmap_colors(HDC hdc, const struct test_color** colors)
{
    INT num_pf, pf, ret;
    PIXELFORMATDESCRIPTOR pfd;
    INT i, j;

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
}
