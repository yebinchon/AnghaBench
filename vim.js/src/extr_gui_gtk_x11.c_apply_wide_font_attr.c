
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {int wide_font; } ;
typedef int PangoAttrList ;


 int INSERT_PANGO_ATTR (int ,int *,int,int) ;
 TYPE_1__ gui ;
 int pango_attr_font_desc_new (int ) ;
 int utf_byte2len (int ) ;
 int utf_char2cells (int) ;
 int utf_iscomposing (int) ;
 int utf_ptr2char (int *) ;

__attribute__((used)) static void
apply_wide_font_attr(char_u *s, int len, PangoAttrList *attr_list)
{
    char_u *start = ((void*)0);
    char_u *p;
    int uc;

    for (p = s; p < s + len; p += utf_byte2len(*p))
    {
 uc = utf_ptr2char(p);

 if (start == ((void*)0))
 {
     if (uc >= 0x80 && utf_char2cells(uc) == 2)
  start = p;
 }
 else if (uc < 0x80
   || (utf_char2cells(uc) != 2 && !utf_iscomposing(uc)))
 {
     INSERT_PANGO_ATTR(pango_attr_font_desc_new(gui.wide_font),
         attr_list, start - s, p - s);
     start = ((void*)0);
 }
    }

    if (start != ((void*)0))
 INSERT_PANGO_ATTR(pango_attr_font_desc_new(gui.wide_font),
     attr_list, start - s, len);
}
