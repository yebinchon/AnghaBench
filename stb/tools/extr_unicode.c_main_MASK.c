#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uval ;
struct TYPE_5__ {int fastpath; int* input; int length; int replace_fallback_with_codepoint; int /*<<< orphan*/  input_size; scalar_t__ splittable; scalar_t__ has_sign; scalar_t__ inherited_storage; scalar_t__ fallback; int /*<<< orphan*/  dont_care; scalar_t__ depth; } ;
typedef  TYPE_1__ table ;
struct TYPE_6__ {int lo; int hi; } ;
typedef  TYPE_2__ char_range ;

/* Variables and functions */
 int /*<<< orphan*/  UVAL_DONT_CARE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 TYPE_2__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (int,int) ; 
 char** FUNC6 (char*,int*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int* unicode_table ; 

int FUNC8(int argc, char **argv)
{
   table t;
   uval maxv=0;
   int i,n=0;
   char **s = FUNC6("../../data/UnicodeData.txt", &n);
   FUNC0(s);
   for (i=0; i < n; ++i) {
      if (s[i][0] == '#' || s[i][0] == '\n' || s[i][0] == 0)
         ;
      else {
         char_range cr = FUNC1(s[i]);
         char *t = FUNC4(s[i], 13);
         uval j, v;
         if (*t == ';' || *t == '\n' || *t == 0)
            v = 0;
         else {
            v = FUNC7(t, NULL, 16);
            if (v < 65536) {
               maxv = FUNC5(v, maxv);
               for (j=cr.lo; j <= cr.hi; ++j) {
                  unicode_table[j] = v;
                  //printf("%06x => %06x\n", j, v);
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
   t.input_size = FUNC3(maxv);
   t.length = 0x110000;
   t.replace_fallback_with_codepoint = 1;

   FUNC2(&t, "stbu_upppercase");
   return 0;
}