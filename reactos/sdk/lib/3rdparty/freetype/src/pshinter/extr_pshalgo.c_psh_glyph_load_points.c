
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {scalar_t__ num_points; TYPE_2__* points; TYPE_1__* outline; } ;
struct TYPE_7__ {int org_y; int org_x; int org_v; int org_u; int * hint; scalar_t__ flags2; } ;
struct TYPE_6__ {TYPE_4__* points; } ;
typedef TYPE_2__* PSH_Point ;
typedef TYPE_3__* PSH_Glyph ;
typedef TYPE_4__ FT_Vector ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Int ;



__attribute__((used)) static void
  psh_glyph_load_points( PSH_Glyph glyph,
                         FT_Int dimension )
  {
    FT_Vector* vec = glyph->outline->points;
    PSH_Point point = glyph->points;
    FT_UInt count = glyph->num_points;


    for ( ; count > 0; count--, point++, vec++ )
    {
      point->flags2 = 0;
      point->hint = ((void*)0);
      if ( dimension == 0 )
      {
        point->org_u = vec->x;
        point->org_v = vec->y;
      }
      else
      {
        point->org_u = vec->y;
        point->org_v = vec->x;
      }






    }
  }
