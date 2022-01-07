
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* data; } ;
typedef TYPE_1__ stb_cfg ;
struct TYPE_6__ {int key; } ;


 int stb_arr_fastdelete (TYPE_3__*,int) ;
 int stb_arr_len (TYPE_3__*) ;
 int stb_stricmp (int ,char*) ;

int stb_cfg_delete(stb_cfg *z, char *key)
{
   int i;
   for (i=0; i < stb_arr_len(z->data); ++i)
      if (!stb_stricmp(z->data[i].key, key)) {
         stb_arr_fastdelete(z->data, i);
         return 1;
      }
   return 0;
}
