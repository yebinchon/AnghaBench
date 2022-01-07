
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font_extra; } ;
struct TYPE_4__ {TYPE_1__ type1; } ;
typedef TYPE_2__* T1_Face ;
typedef int PS_FontExtraRec ;
typedef scalar_t__ FT_Face ;
typedef int FT_Error ;


 int FT_Err_Ok ;

__attribute__((used)) static FT_Error
  t1_ps_get_font_extra( FT_Face face,
                        PS_FontExtraRec* afont_extra )
  {
    *afont_extra = ((T1_Face)face)->type1.font_extra;

    return FT_Err_Ok;
  }
