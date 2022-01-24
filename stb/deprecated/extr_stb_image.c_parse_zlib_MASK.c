#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int zout; int zout_start; int /*<<< orphan*/  z_distance; int /*<<< orphan*/  z_length; scalar_t__ code_buffer; scalar_t__ num_bits; } ;
typedef  TYPE_1__ zbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * default_distance ; 
 int /*<<< orphan*/ * default_length ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ stbi_png_partial ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(zbuf *a, int parse_header)
{
   int final, type;
   if (parse_header)
      if (!FUNC4(a)) return 0;
   a->num_bits = 0;
   a->code_buffer = 0;
   do {
      final = FUNC6(a,1);
      type = FUNC6(a,2);
      if (type == 0) {
         if (!FUNC3(a)) return 0;
      } else if (type == 3) {
         return 0;
      } else {
         if (type == 1) {
            // use fixed code lengths
            if (!default_distance[31]) FUNC1();
            if (!FUNC5(&a->z_length  , default_length  , 288)) return 0;
            if (!FUNC5(&a->z_distance, default_distance,  32)) return 0;
         } else {
            if (!FUNC0(a)) return 0;
         }
         if (!FUNC2(a)) return 0;
      }
      if (stbi_png_partial && a->zout - a->zout_start > 65536)
         break;
   } while (!final);
   return 1;
}