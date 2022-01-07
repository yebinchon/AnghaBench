
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* font; } ;
struct TYPE_3__ {int header; } ;
typedef int FT_WinFNT_HeaderRec ;
typedef scalar_t__ FT_Face ;
typedef int FT_Error ;
typedef TYPE_1__* FNT_Font ;
typedef TYPE_2__* FNT_Face ;



__attribute__((used)) static FT_Error
  winfnt_get_header( FT_Face face,
                     FT_WinFNT_HeaderRec *aheader )
  {
    FNT_Font font = ((FNT_Face)face)->font;


    *aheader = font->header;

    return 0;
  }
