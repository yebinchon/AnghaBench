
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int grayPattern ;
typedef int argbq ;
struct TYPE_9__ {size_t x; size_t y; int dir; } ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_8__ {scalar_t__ bmiColors; TYPE_1__ bmiHeader; } ;
typedef long RGBQUAD ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 void* CreateDIBPatternBrushPt (TYPE_2__*,int ) ;
 void* CreateSolidBrush (int ) ;
 int DIB_RGB_COLORS ;
 int GetDC (int ) ;
 int RGB (int,int,int ) ;
 int WALL_TOP ;
 int end_dir ;
 size_t end_x ;
 size_t end_y ;
 int free (TYPE_2__*) ;
 void* hBrushDead ;
 void* hBrushLiving ;
 int hDC ;
 int hWnd ;
 TYPE_2__* malloc (int) ;
 int** maze ;
 int memcpy (scalar_t__,long*,int) ;
 TYPE_3__* path ;
 size_t pathi ;
 int start_dir ;
 size_t start_x ;
 size_t start_y ;

__attribute__((used)) static void
begin_solve_maze()
{
  static long grayPattern[] = {
 0x55555555,
 0xaaaaaaaa,
 0x55555555,
 0xaaaaaaaa,
 0x55555555,
 0xaaaaaaaa,
 0x55555555,
 0xaaaaaaaa
  };
  static RGBQUAD argbq[] = {
   { 0, 0, 255, 0 },
 { 255, 255, 255, 0 }
  };
  BITMAPINFO *pbmi;

  hDC = GetDC(hWnd);
  pbmi = malloc(sizeof(BITMAPINFOHEADER) + sizeof(argbq) + sizeof(grayPattern));
  pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
  pbmi->bmiHeader.biWidth = 8;
  pbmi->bmiHeader.biHeight = 8;
  pbmi->bmiHeader.biPlanes = 1;
  pbmi->bmiHeader.biBitCount = 1;
  pbmi->bmiHeader.biCompression = BI_RGB;
  (void) memcpy(pbmi->bmiColors, argbq, sizeof(argbq));
  (void) memcpy(pbmi->bmiColors + 2, grayPattern, sizeof(grayPattern));




  hBrushDead = CreateSolidBrush(RGB(255, 0, 0));


  free(pbmi);
  hBrushLiving = CreateSolidBrush(RGB(0, 255, 0));


  maze[start_x][start_y] |= (WALL_TOP >> start_dir);
  maze[end_x][end_y] |= (WALL_TOP >> end_dir);


  pathi = 0;
  path[pathi].x = end_x;
  path[pathi].y = end_y;
  path[pathi].dir = -1;
}
