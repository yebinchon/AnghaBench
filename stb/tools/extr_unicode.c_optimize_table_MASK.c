#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int length; int depth; int /*<<< orphan*/  input; scalar_t__ splittable; } ;
typedef  TYPE_1__ table ;
struct TYPE_11__ {size_t path; } ;
typedef  TYPE_2__ result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC2 (TYPE_1__*,int,char*) ; 
 TYPE_2__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 
 int FUNC7 (TYPE_1__*,int) ; 

void FUNC8(table *t, char *table_name)
{
   int modelist[3] = { 85, -1 };
   int modes[8];
   int num_modes = 0;
   int decent_size;
   result r;
   size_t path;
   table s;

   // strip tail end of table
   int orig_length = t->length;
   int threshhold = 0xffff;
   int p = FUNC7(t, 2);
   int len_saved = t->length - p;
   if (len_saved >= threshhold) {
      t->length = p;
      while (p > 0x10000) {
         p = FUNC7(t, 0);
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


   // find size of table if we use path 86
   decent_size = FUNC4(t, modelist);


   #if 1
   // find best packing of remainder of table by exploring tree of packings
   r = FUNC3(t, 0, decent_size);
   // use the computed 'path' to evaluate and output tree
   path = r.path;
   #else
   path = 86;//90;//132097;
   #endif

   while (path) {
      modes[num_modes++] = (path & 127) - 1;
      path >>= 7;
   }

   FUNC5("// modes: %d\n", r.path);
   s = *t;
   while (num_modes > 0) {
      char name[256];
      FUNC6(name, "%s_%d", table_name, num_modes+1);
      --num_modes;
      s = FUNC2(&s, modes[num_modes], name);
   }
   // output the final table as-is
   if (s.splittable)
      FUNC1(table_name, "_1", s.input, s.length);
   else
      FUNC0(table_name, "_1", s.input, s.length, 0, NULL);
}