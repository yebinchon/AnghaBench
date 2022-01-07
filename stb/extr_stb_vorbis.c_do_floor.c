
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* floor_types; TYPE_2__* floor_config; } ;
typedef TYPE_3__ vorb ;
typedef scalar_t__ uint8 ;
typedef int YTYPE ;
struct TYPE_14__ {int floor1_multiplier; int values; int* sorted_order; int* Xlist; } ;
struct TYPE_13__ {int* submap_floor; TYPE_1__* chan; } ;
struct TYPE_11__ {TYPE_5__ floor1; } ;
struct TYPE_10__ {int mux; } ;
typedef TYPE_4__ Mapping ;
typedef TYPE_5__ Floor1 ;


 int CHECK (TYPE_3__*) ;
 int LINE_OP (float,int ) ;
 int TRUE ;
 int VORBIS_invalid_stream ;
 int draw_line (float*,int,int,int,int,int) ;
 int error (TYPE_3__*,int ) ;
 int * inverse_db_table ;

__attribute__((used)) static int do_floor(vorb *f, Mapping *map, int i, int n, float *target, YTYPE *finalY, uint8 *step2_flag)
{
   int n2 = n >> 1;
   int s = map->chan[i].mux, floor;
   floor = map->submap_floor[s];
   if (f->floor_types[floor] == 0) {
      return error(f, VORBIS_invalid_stream);
   } else {
      Floor1 *g = &f->floor_config[floor].floor1;
      int j,q;
      int lx = 0, ly = finalY[0] * g->floor1_multiplier;
      for (q=1; q < g->values; ++q) {
         j = g->sorted_order[q];

         if (finalY[j] >= 0)



         {
            int hy = finalY[j] * g->floor1_multiplier;
            int hx = g->Xlist[j];
            if (lx != hx)
               draw_line(target, lx,ly, hx,hy, n2);
            CHECK(f);
            lx = hx, ly = hy;
         }
      }
      if (lx < n2) {

         for (j=lx; j < n2; ++j)
            LINE_OP(target[j], inverse_db_table[ly]);
         CHECK(f);
      }
   }
   return TRUE;
}
