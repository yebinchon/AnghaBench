
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int input_size; int length; int depth; int input; scalar_t__ inherited_storage; } ;
typedef TYPE_1__ table ;
struct TYPE_8__ {scalar_t__ size; size_t path; } ;
typedef TYPE_2__ result ;


 int CLUSTERSIZECOUNT ;
 int MODECOUNT ;
 TYPE_1__ pack_for_mode (TYPE_1__*,int,int ) ;
 int stb_arr_free (int ) ;
 scalar_t__ stb_max (scalar_t__,scalar_t__) ;

result pack_table(table *t, size_t path, int min_storage)
{
   int i;
   result best;
   best.size = t->inherited_storage + t->input_size * t->length;
   best.path = path;

   if ((int) t->inherited_storage > min_storage) {
      best.size = stb_max(best.size, t->inherited_storage);
      return best;
   }

   if (t->length <= 256 || t->depth >= 4) {

      return best;
   }

   path <<= 7;
   for (i=0; i < MODECOUNT * CLUSTERSIZECOUNT; ++i) {
      table newtab;
      result r;
      newtab = pack_for_mode(t, i, 0);
      r = pack_table(&newtab, path+i+1, min_storage);
      if (r.size < best.size)
         best = r;
      stb_arr_free(newtab.input);

   }
   return best;
}
