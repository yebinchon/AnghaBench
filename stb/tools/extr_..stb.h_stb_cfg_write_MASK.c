#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_6__* data; } ;
typedef  TYPE_1__ stb_cfg ;
struct TYPE_10__ {scalar_t__ value_len; int /*<<< orphan*/ * value; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ stb__cfg_item ;
struct TYPE_11__ {int value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(stb_cfg *z, char *key, void *value, int len)
{
   int i;
   for (i=0; i < FUNC1(z->data); ++i)
      if (!FUNC5(z->data[i].key, key))
         break;
   if (i == FUNC1(z->data)) {
      stb__cfg_item p;
      p.key = FUNC4(key, z);
      p.value = NULL;
      p.value_len = 0;
      FUNC2(z->data, p);
   }
   z->data[i].value = FUNC3(z, len);
   z->data[i].value_len = len;
   FUNC0(z->data[i].value, value, len);
}