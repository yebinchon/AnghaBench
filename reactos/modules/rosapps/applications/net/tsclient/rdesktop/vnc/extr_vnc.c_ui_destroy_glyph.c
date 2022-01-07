
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HGLYPH ;
typedef int HBITMAP ;


 int ui_destroy_bitmap (int ) ;

void
ui_destroy_glyph(HGLYPH glyph)
{
 ui_destroy_bitmap((HBITMAP) glyph);
}
