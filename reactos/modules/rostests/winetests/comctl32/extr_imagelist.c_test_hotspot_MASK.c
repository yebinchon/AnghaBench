#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HOTSPOTS_MAX ; 
#define  SIZEX1 129 
 int SIZEX2 ; 
#define  SIZEY1 128 
 int SIZEY2 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int,int) ; 

__attribute__((used)) static void FUNC13(void)
{
    struct hotspot {
        int dx;
        int dy;
    };

#define SIZEX1 47
#define SIZEY1 31
#define SIZEX2 11
#define SIZEY2 17
#define HOTSPOTS_MAX 4       /* Number of entries in hotspots */
    static const struct hotspot hotspots[HOTSPOTS_MAX] = {
        { 10, 7 },
        { SIZEX1, SIZEY1 },
        { -9, -8 },
        { -7, 35 }
    };
    int i, j, ret;
    HIMAGELIST himl1 = FUNC1(SIZEX1, SIZEY1);
    HIMAGELIST himl2 = FUNC1(SIZEX2, SIZEY2);
    HWND hwnd = FUNC2();


    for (i = 0; i < HOTSPOTS_MAX; i++) {
        for (j = 0; j < HOTSPOTS_MAX; j++) {
            int dx1 = hotspots[i].dx;
            int dy1 = hotspots[i].dy;
            int dx2 = hotspots[j].dx;
            int dy2 = hotspots[j].dy;
            int correctx, correcty, newx, newy;
            char loc[256];
            HIMAGELIST himlNew;
            POINT ppt;

            ret = FUNC5(himl1, 0, dx1, dy1);
            FUNC4(ret != 0, "BeginDrag failed for { %d, %d }\n", dx1, dy1);
            FUNC12(loc, "BeginDrag (%d,%d)\n", i, j);
            FUNC11(hwnd, himl1, 0, FUNC3(SIZEX1, SIZEY1), loc, TRUE);

            /* check merging the dragged image with a second image */
            ret = FUNC10(himl2, 0, dx2, dy2);
            FUNC4(ret != 0, "SetDragCursorImage failed for {%d, %d}{%d, %d}\n",
                    dx1, dy1, dx2, dy2);
            FUNC12(loc, "SetDragCursorImage (%d,%d)\n", i, j);
            FUNC11(hwnd, himl2, 0, FUNC3(SIZEX2, SIZEY2), loc, TRUE);

            /* check new hotspot, it should be the same like the old one */
            himlNew = FUNC8(NULL, &ppt);
            FUNC4(ppt.x == dx1 && ppt.y == dy1,
                    "Expected drag hotspot [%d,%d] got [%d,%d]\n",
                    dx1, dy1, ppt.x, ppt.y);
            /* check size of new dragged image */
            FUNC9(himlNew, &newx, &newy);
            correctx = FUNC3(SIZEX1, FUNC3(SIZEX2 + dx2, SIZEX1 - dx2));
            correcty = FUNC3(SIZEY1, FUNC3(SIZEY2 + dy2, SIZEY1 - dy2));
            FUNC4(newx == correctx && newy == correcty,
                    "Expected drag image size [%d,%d] got [%d,%d]\n",
                    correctx, correcty, newx, newy);
            FUNC12(loc, "GetDragImage (%d,%d)\n", i, j);
            FUNC11(hwnd, himlNew, 0, FUNC3(correctx, correcty), loc, TRUE);
            FUNC7();
        }
    }
#undef SIZEX1
#undef SIZEY1
#undef SIZEX2
#undef SIZEY2
#undef HOTSPOTS_MAX
    FUNC6(himl2);
    FUNC6(himl1);
    FUNC0(hwnd);
}