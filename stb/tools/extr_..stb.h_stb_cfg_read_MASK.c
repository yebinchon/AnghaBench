#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* data; } ;
typedef  TYPE_1__ stb_cfg ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  value_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(stb_cfg *z, char *key, void *value, int len)
{
   int i;
   for (i=0; i < FUNC1(z->data); ++i) {
      if (!FUNC3(z->data[i].key, key)) {
         int n = FUNC2(len, z->data[i].value_len);
         FUNC0(value, z->data[i].value, n);
         if (n < len)
            *((char *) value + n) = 0;
         return 1;
      }
   }
   return 0;
}