
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int count; TYPE_2__* zones; } ;
struct TYPE_6__ {int cur_top; int org_top; int cur_bottom; int org_bottom; int cur_ref; int org_ref; int cur_delta; int org_delta; } ;
struct TYPE_5__ {int blue_scale; scalar_t__ blue_shift; TYPE_3__ family_bottom; TYPE_3__ normal_bottom; TYPE_3__ family_top; TYPE_3__ normal_top; scalar_t__ blue_threshold; void* no_overshoots; } ;
typedef TYPE_1__* PSH_Blues ;
typedef TYPE_2__* PSH_Blue_Zone ;
typedef TYPE_3__* PSH_Blue_Table ;
typedef int FT_UInt ;
typedef int FT_Pos ;
typedef scalar_t__ FT_Int ;
typedef int FT_Fixed ;


 void* FT_BOOL (int) ;
 int FT_MulFix (int,int) ;
 int FT_PIX_ROUND (int) ;

__attribute__((used)) static void
  psh_blues_scale_zones( PSH_Blues blues,
                         FT_Fixed scale,
                         FT_Pos delta )
  {
    FT_UInt count;
    FT_UInt num;
    PSH_Blue_Table table = ((void*)0);
    if ( scale >= 0x20C49BAL )
      blues->no_overshoots = FT_BOOL( scale < blues->blue_scale * 8 / 125 );
    else
      blues->no_overshoots = FT_BOOL( scale * 125 < blues->blue_scale * 8 );
    {
      FT_Int threshold = blues->blue_shift;


      while ( threshold > 0 && FT_MulFix( threshold, scale ) > 32 )
        threshold--;

      blues->blue_threshold = threshold;
    }

    for ( num = 0; num < 4; num++ )
    {
      PSH_Blue_Zone zone;


      switch ( num )
      {
      case 0:
        table = &blues->normal_top;
        break;
      case 1:
        table = &blues->normal_bottom;
        break;
      case 2:
        table = &blues->family_top;
        break;
      default:
        table = &blues->family_bottom;
        break;
      }

      zone = table->zones;
      count = table->count;
      for ( ; count > 0; count--, zone++ )
      {
        zone->cur_top = FT_MulFix( zone->org_top, scale ) + delta;
        zone->cur_bottom = FT_MulFix( zone->org_bottom, scale ) + delta;
        zone->cur_ref = FT_MulFix( zone->org_ref, scale ) + delta;
        zone->cur_delta = FT_MulFix( zone->org_delta, scale );


        zone->cur_ref = FT_PIX_ROUND( zone->cur_ref );







      }
    }



    for ( num = 0; num < 2; num++ )
    {
      PSH_Blue_Zone zone1, zone2;
      FT_UInt count1, count2;
      PSH_Blue_Table normal, family;


      switch ( num )
      {
      case 0:
        normal = &blues->normal_top;
        family = &blues->family_top;
        break;

      default:
        normal = &blues->normal_bottom;
        family = &blues->family_bottom;
      }

      zone1 = normal->zones;
      count1 = normal->count;

      for ( ; count1 > 0; count1--, zone1++ )
      {


        zone2 = family->zones;
        count2 = family->count;

        for ( ; count2 > 0; count2--, zone2++ )
        {
          FT_Pos Delta;


          Delta = zone1->org_ref - zone2->org_ref;
          if ( Delta < 0 )
            Delta = -Delta;

          if ( FT_MulFix( Delta, scale ) < 64 )
          {
            zone1->cur_top = zone2->cur_top;
            zone1->cur_bottom = zone2->cur_bottom;
            zone1->cur_ref = zone2->cur_ref;
            zone1->cur_delta = zone2->cur_delta;
            break;
          }
        }
      }
    }
  }
