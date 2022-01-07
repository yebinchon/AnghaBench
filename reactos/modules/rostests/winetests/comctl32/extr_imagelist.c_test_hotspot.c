
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int HWND ;
typedef int HIMAGELIST ;


 int DestroyWindow (int ) ;
 int HOTSPOTS_MAX ;

 int SIZEX2 ;

 int SIZEY2 ;
 int TRUE ;
 int createImageList (int const,int const) ;
 int create_window () ;
 int max (int const,int const) ;
 int ok (int,char*,int,int,...) ;
 int pImageList_BeginDrag (int ,int ,int,int) ;
 int pImageList_Destroy (int ) ;
 int pImageList_EndDrag () ;
 int pImageList_GetDragImage (int *,TYPE_1__*) ;
 int pImageList_GetIconSize (int ,int*,int*) ;
 int pImageList_SetDragCursorImage (int ,int ,int,int) ;
 int show_image (int ,int ,int ,int,char*,int ) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void test_hotspot(void)
{
    struct hotspot {
        int dx;
        int dy;
    };






    static const struct hotspot hotspots[4] = {
        { 10, 7 },
        { 47, 31 },
        { -9, -8 },
        { -7, 35 }
    };
    int i, j, ret;
    HIMAGELIST himl1 = createImageList(47, 31);
    HIMAGELIST himl2 = createImageList(11, 17);
    HWND hwnd = create_window();


    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            int dx1 = hotspots[i].dx;
            int dy1 = hotspots[i].dy;
            int dx2 = hotspots[j].dx;
            int dy2 = hotspots[j].dy;
            int correctx, correcty, newx, newy;
            char loc[256];
            HIMAGELIST himlNew;
            POINT ppt;

            ret = pImageList_BeginDrag(himl1, 0, dx1, dy1);
            ok(ret != 0, "BeginDrag failed for { %d, %d }\n", dx1, dy1);
            sprintf(loc, "BeginDrag (%d,%d)\n", i, j);
            show_image(hwnd, himl1, 0, max(47, 31), loc, TRUE);


            ret = pImageList_SetDragCursorImage(himl2, 0, dx2, dy2);
            ok(ret != 0, "SetDragCursorImage failed for {%d, %d}{%d, %d}\n",
                    dx1, dy1, dx2, dy2);
            sprintf(loc, "SetDragCursorImage (%d,%d)\n", i, j);
            show_image(hwnd, himl2, 0, max(11, 17), loc, TRUE);


            himlNew = pImageList_GetDragImage(((void*)0), &ppt);
            ok(ppt.x == dx1 && ppt.y == dy1,
                    "Expected drag hotspot [%d,%d] got [%d,%d]\n",
                    dx1, dy1, ppt.x, ppt.y);

            pImageList_GetIconSize(himlNew, &newx, &newy);
            correctx = max(47, max(11 + dx2, 47 - dx2));
            correcty = max(31, max(17 + dy2, 31 - dy2));
            ok(newx == correctx && newy == correcty,
                    "Expected drag image size [%d,%d] got [%d,%d]\n",
                    correctx, correcty, newx, newy);
            sprintf(loc, "GetDragImage (%d,%d)\n", i, j);
            show_image(hwnd, himlNew, 0, max(correctx, correcty), loc, TRUE);
            pImageList_EndDrag();
        }
    }





    pImageList_Destroy(himl2);
    pImageList_Destroy(himl1);
    DestroyWindow(hwnd);
}
