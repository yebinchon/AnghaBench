
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ COLORREF ;
typedef int BOOL ;


 scalar_t__ RGB (int,int,int) ;

__attribute__((used)) static BOOL is_black_pen( COLORREF fg, COLORREF bg, int r, int g, int b )
{
    if (fg == 0 || bg == 0xffffff) return RGB(r,g,b) != 0xffffff && RGB(r,g,b) != bg;
    return RGB(r,g,b) == 0x000000 || RGB(r,g,b) == bg;
}
