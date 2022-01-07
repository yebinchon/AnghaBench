
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uval ;
struct TYPE_5__ {int fastpath; int* input; int length; int replace_fallback_with_codepoint; int input_size; scalar_t__ splittable; scalar_t__ has_sign; scalar_t__ inherited_storage; scalar_t__ fallback; int dont_care; scalar_t__ depth; } ;
typedef TYPE_1__ table ;
struct TYPE_6__ {int lo; int hi; } ;
typedef TYPE_2__ char_range ;


 int UVAL_DONT_CARE_DEFAULT ;
 int assert (char**) ;
 TYPE_2__ get_range (char*) ;
 int optimize_table (TYPE_1__*,char*) ;
 int size_for_max_number (int) ;
 char* skip_semi (char*,int) ;
 int stb_max (int,int) ;
 char** stb_stringfile (char*,int*) ;
 int strtol (char*,int *,int) ;
 int* unicode_table ;

int main(int argc, char **argv)
{
   table t;
   uval maxv=0;
   int i,n=0;
   char **s = stb_stringfile("../../data/UnicodeData.txt", &n);
   assert(s);
   for (i=0; i < n; ++i) {
      if (s[i][0] == '#' || s[i][0] == '\n' || s[i][0] == 0)
         ;
      else {
         char_range cr = get_range(s[i]);
         char *t = skip_semi(s[i], 13);
         uval j, v;
         if (*t == ';' || *t == '\n' || *t == 0)
            v = 0;
         else {
            v = strtol(t, ((void*)0), 16);
            if (v < 65536) {
               maxv = stb_max(v, maxv);
               for (j=cr.lo; j <= cr.hi; ++j) {
                  unicode_table[j] = v;

               }
            }
         }
      }
   }

   t.depth = 0;
   t.dont_care = UVAL_DONT_CARE_DEFAULT;
   t.fallback = 0;
   t.fastpath = 256;
   t.inherited_storage = 0;
   t.has_sign = 0;
   t.splittable = 0;
   t.input = unicode_table;
   t.input_size = size_for_max_number(maxv);
   t.length = 0x110000;
   t.replace_fallback_with_codepoint = 1;

   optimize_table(&t, "stbu_upppercase");
   return 0;
}
