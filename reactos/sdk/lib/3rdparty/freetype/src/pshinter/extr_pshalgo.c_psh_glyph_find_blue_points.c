
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ count; TYPE_4__* zones; } ;
struct TYPE_14__ {scalar_t__ org_bottom; scalar_t__ org_top; int cur_top; int cur_bottom; } ;
struct TYPE_13__ {scalar_t__ blue_fuzz; scalar_t__ blue_threshold; scalar_t__ no_overshoots; TYPE_5__ normal_bottom; TYPE_5__ normal_top; } ;
struct TYPE_12__ {scalar_t__ num_points; TYPE_1__* points; } ;
struct TYPE_11__ {scalar_t__ org_u; int cur_u; int dir_out; int dir_in; } ;
typedef TYPE_1__* PSH_Point ;
typedef TYPE_2__* PSH_Glyph ;
typedef TYPE_3__* PSH_Blues ;
typedef TYPE_4__* PSH_Blue_Zone ;
typedef TYPE_5__* PSH_Blue_Table ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Pos ;


 int PSH_DIR_COMPARE (int ,int ) ;
 int PSH_DIR_HORIZONTAL ;
 scalar_t__ psh_point_is_strong (TYPE_1__*) ;
 int psh_point_set_fitted (TYPE_1__*) ;
 int psh_point_set_strong (TYPE_1__*) ;

__attribute__((used)) static void
  psh_glyph_find_blue_points( PSH_Blues blues,
                              PSH_Glyph glyph )
  {
    PSH_Blue_Table table;
    PSH_Blue_Zone zone;
    FT_UInt glyph_count = glyph->num_points;
    FT_UInt blue_count;
    PSH_Point point = glyph->points;


    for ( ; glyph_count > 0; glyph_count--, point++ )
    {
      FT_Pos y;



      if ( !PSH_DIR_COMPARE( point->dir_in, PSH_DIR_HORIZONTAL ) &&
           !PSH_DIR_COMPARE( point->dir_out, PSH_DIR_HORIZONTAL ) )
        continue;


      if ( psh_point_is_strong( point ) )
        continue;

      y = point->org_u;


      table = &blues->normal_top;
      blue_count = table->count;
      zone = table->zones;

      for ( ; blue_count > 0; blue_count--, zone++ )
      {
        FT_Pos delta = y - zone->org_bottom;


        if ( delta < -blues->blue_fuzz )
          break;

        if ( y <= zone->org_top + blues->blue_fuzz )
          if ( blues->no_overshoots || delta <= blues->blue_threshold )
          {
            point->cur_u = zone->cur_bottom;
            psh_point_set_strong( point );
            psh_point_set_fitted( point );
          }
      }


      table = &blues->normal_bottom;
      blue_count = table->count;
      zone = table->zones + blue_count - 1;

      for ( ; blue_count > 0; blue_count--, zone-- )
      {
        FT_Pos delta = zone->org_top - y;


        if ( delta < -blues->blue_fuzz )
          break;

        if ( y >= zone->org_bottom - blues->blue_fuzz )
          if ( blues->no_overshoots || delta < blues->blue_threshold )
          {
            point->cur_u = zone->cur_top;
            psh_point_set_strong( point );
            psh_point_set_fitted( point );
          }
      }
    }
  }
