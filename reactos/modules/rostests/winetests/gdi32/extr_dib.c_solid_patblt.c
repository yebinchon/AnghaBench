
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int HBRUSH ;
typedef int COLORREF ;


 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int PATCOPY ;
 int PatBlt (int ,int,int,int,int,int ) ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static inline void solid_patblt( HDC hdc, int x, int y, int width, int height, COLORREF color )
{
    HBRUSH brush = CreateSolidBrush( color );
    brush = SelectObject( hdc, brush );
    PatBlt( hdc, x, y, width, height, PATCOPY );
    DeleteObject( SelectObject( hdc, brush ) );
}
