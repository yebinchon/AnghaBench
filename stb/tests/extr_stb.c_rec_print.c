
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* relpath; float weight; struct TYPE_4__** files; struct TYPE_4__** subdirs; } ;
typedef TYPE_1__ stb_dirtree2 ;


 int printf (char*,...) ;
 int stb_arr_len (TYPE_1__**) ;

void rec_print(stb_dirtree2 *d, int depth)
{
   int i;
   for (i=0; i < depth; ++i) printf("  ");
   printf("%s (%d)\n", d->relpath, stb_arr_len(d->files));
   for (i=0; i < stb_arr_len(d->subdirs); ++i)
      rec_print(d->subdirs[i], depth+1);
   d->weight = (float) stb_arr_len(d->files);
}
