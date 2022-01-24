#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int stb_int16 ;
struct TYPE_6__ {TYPE_4__* data; scalar_t__ f; } ;
typedef  TYPE_1__ stb_cfg ;
struct TYPE_7__ {int* key; int value_len; int* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,scalar_t__) ; 
 int* stb__cfg_sig ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int*) ; 

void FUNC6(stb_cfg *z)
{
   if (z->f) {
      int i;
      // write the file out
      FUNC1(stb__cfg_sig, 12, 1, z->f);
      for (i=0; i < FUNC3(z->data); ++i) {
         stb_int16 n = (stb_int16) FUNC5(z->data[i].key)+1;
         FUNC1(&n, 2, 1, z->f);
         FUNC1(z->data[i].key, n, 1, z->f);
         FUNC1(&z->data[i].value_len, 4, 1, z->f);
         FUNC1(z->data[i].value, z->data[i].value_len, 1, z->f);
      }
      FUNC0(z->f);
   }
   FUNC2(z->data);
   FUNC4(z);
}