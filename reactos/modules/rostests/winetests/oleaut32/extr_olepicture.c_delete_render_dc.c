
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int HBITMAP ;


 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int SelectObject (int ,int ) ;
 int stock_bm ;

__attribute__((used)) static void delete_render_dc( HDC dc )
{
    HBITMAP dib = SelectObject( dc, stock_bm );
    DeleteObject( dib );
    DeleteDC( dc );
}
