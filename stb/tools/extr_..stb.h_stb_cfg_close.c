
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stb_int16 ;
struct TYPE_6__ {TYPE_4__* data; scalar_t__ f; } ;
typedef TYPE_1__ stb_cfg ;
struct TYPE_7__ {int* key; int value_len; int* value; } ;


 int fclose (scalar_t__) ;
 int fwrite (int*,int,int,scalar_t__) ;
 int* stb__cfg_sig ;
 int stb_arr_free (TYPE_4__*) ;
 int stb_arr_len (TYPE_4__*) ;
 int stb_free (TYPE_1__*) ;
 scalar_t__ strlen (int*) ;

void stb_cfg_close(stb_cfg *z)
{
   if (z->f) {
      int i;

      fwrite(stb__cfg_sig, 12, 1, z->f);
      for (i=0; i < stb_arr_len(z->data); ++i) {
         stb_int16 n = (stb_int16) strlen(z->data[i].key)+1;
         fwrite(&n, 2, 1, z->f);
         fwrite(z->data[i].key, n, 1, z->f);
         fwrite(&z->data[i].value_len, 4, 1, z->f);
         fwrite(z->data[i].value, z->data[i].value_len, 1, z->f);
      }
      fclose(z->f);
   }
   stb_arr_free(z->data);
   stb_free(z);
}
