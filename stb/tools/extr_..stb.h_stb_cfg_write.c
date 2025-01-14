
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_6__* data; } ;
typedef TYPE_1__ stb_cfg ;
struct TYPE_10__ {scalar_t__ value_len; int * value; int key; } ;
typedef TYPE_2__ stb__cfg_item ;
struct TYPE_11__ {int value_len; int value; int key; } ;


 int memcpy (int ,void*,int) ;
 int stb_arr_len (TYPE_6__*) ;
 int stb_arr_push (TYPE_6__*,TYPE_2__) ;
 int stb_malloc (TYPE_1__*,int) ;
 int stb_strdup (char*,TYPE_1__*) ;
 int stb_stricmp (int ,char*) ;

void stb_cfg_write(stb_cfg *z, char *key, void *value, int len)
{
   int i;
   for (i=0; i < stb_arr_len(z->data); ++i)
      if (!stb_stricmp(z->data[i].key, key))
         break;
   if (i == stb_arr_len(z->data)) {
      stb__cfg_item p;
      p.key = stb_strdup(key, z);
      p.value = ((void*)0);
      p.value_len = 0;
      stb_arr_push(z->data, p);
   }
   z->data[i].value = stb_malloc(z, len);
   z->data[i].value_len = len;
   memcpy(z->data[i].value, value, len);
}
