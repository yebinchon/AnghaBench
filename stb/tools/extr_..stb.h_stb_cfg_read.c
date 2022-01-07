
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* data; } ;
typedef TYPE_1__ stb_cfg ;
struct TYPE_5__ {int value; int value_len; int key; } ;


 int memcpy (void*,int ,int) ;
 int stb_arr_len (TYPE_3__*) ;
 int stb_min (int,int ) ;
 int stb_stricmp (int ,char*) ;

int stb_cfg_read(stb_cfg *z, char *key, void *value, int len)
{
   int i;
   for (i=0; i < stb_arr_len(z->data); ++i) {
      if (!stb_stricmp(z->data[i].key, key)) {
         int n = stb_min(len, z->data[i].value_len);
         memcpy(value, z->data[i].value, n);
         if (n < len)
            *((char *) value + n) = 0;
         return 1;
      }
   }
   return 0;
}
