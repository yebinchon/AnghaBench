
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int grayPattern ;
typedef int argbq ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_7__ {scalar_t__ bmiColors; TYPE_1__ bmiHeader; } ;
typedef long RGBQUAD ;
typedef int LPCREATESTRUCT ;
typedef int HWND ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 void* CreateDIBPatternBrushPt (TYPE_2__*,int ) ;
 int CreatePen (int ,int,int ) ;
 void* CreateSolidBrush (int ) ;
 int DIB_RGB_COLORS ;
 int GetDC (int ) ;
 int PS_SOLID ;
 int RGB (int,int,int) ;
 int ReadRegistry () ;
 int TRUE ;
 int bw ;
 int free (TYPE_2__*) ;
 int grid_height ;
 int grid_width ;
 void* hBrushDead ;
 void* hBrushLiving ;
 int hDC ;
 int hPenWall ;
 TYPE_2__* malloc (int) ;
 int memcpy (scalar_t__,long*,int) ;
 int rand () ;
 int size ;
 int srand (unsigned int) ;
 int start_timer (int ,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static BOOL OnCreate(HWND hWnd, LPCREATESTRUCT lpCreateStruct)
{
    srand((unsigned) time(((void*)0)));

    ReadRegistry();

    if (size < 2) {
        size = 7 + (rand() % 30);
    }
    grid_width = grid_height = size;
    bw = (size > 6 ? 3 : (size - 1) / 2);
    hBrushDead = CreateSolidBrush(RGB(255, 0, 0));

    hBrushLiving = CreateSolidBrush(RGB(0, 255, 0));
    hPenWall = CreatePen(PS_SOLID, 3, RGB(150, 150, 150));

    hDC = GetDC(hWnd);

    start_timer(hWnd, 1);

    return TRUE;
}
