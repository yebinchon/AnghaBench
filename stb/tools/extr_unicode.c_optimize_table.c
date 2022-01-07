
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int length; int depth; int input; scalar_t__ splittable; } ;
typedef TYPE_1__ table ;
struct TYPE_11__ {size_t path; } ;
typedef TYPE_2__ result ;


 int output_table (char*,char*,int ,int,int ,int *) ;
 int output_table_with_trims (char*,char*,int ,int) ;
 TYPE_1__ pack_for_mode (TYPE_1__*,int,char*) ;
 TYPE_2__ pack_table (TYPE_1__*,int ,int) ;
 int pack_table_by_modes (TYPE_1__*,int*) ;
 int printf (char*,size_t) ;
 int sprintf (char*,char*,char*,int) ;
 int strip_table (TYPE_1__*,int) ;

void optimize_table(table *t, char *table_name)
{
   int modelist[3] = { 85, -1 };
   int modes[8];
   int num_modes = 0;
   int decent_size;
   result r;
   size_t path;
   table s;


   int orig_length = t->length;
   int threshhold = 0xffff;
   int p = strip_table(t, 2);
   int len_saved = t->length - p;
   if (len_saved >= threshhold) {
      t->length = p;
      while (p > 0x10000) {
         p = strip_table(t, 0);
         len_saved = t->length - p;
         if (len_saved < 0x10000)
            break;
         len_saved = orig_length - p;
         if (len_saved < threshhold)
            break;
         threshhold *= 2;
      }
   }

   t->depth = 1;



   decent_size = pack_table_by_modes(t, modelist);




   r = pack_table(t, 0, decent_size);

   path = r.path;




   while (path) {
      modes[num_modes++] = (path & 127) - 1;
      path >>= 7;
   }

   printf("// modes: %d\n", r.path);
   s = *t;
   while (num_modes > 0) {
      char name[256];
      sprintf(name, "%s_%d", table_name, num_modes+1);
      --num_modes;
      s = pack_for_mode(&s, modes[num_modes], name);
   }

   if (s.splittable)
      output_table_with_trims(table_name, "_1", s.input, s.length);
   else
      output_table(table_name, "_1", s.input, s.length, 0, ((void*)0));
}
