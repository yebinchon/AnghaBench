
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ft_face; TYPE_1__* buffer; } ;
typedef TYPE_2__ fz_font ;
struct TYPE_5__ {int len; } ;


 scalar_t__ is_postscript (int *) ;
 scalar_t__ is_truetype (int *) ;
 scalar_t__ is_ttc (TYPE_2__*) ;

int
pdf_font_writing_supported(fz_font *font)
{
 if (font->ft_face == ((void*)0) || font->buffer == ((void*)0) || font->buffer->len < 4)
  return 0;
 if (is_ttc(font))
  return 0;
 if (is_truetype(font->ft_face))
  return 1;
 if (is_postscript(font->ft_face))
  return 1;
 return 0;
}
