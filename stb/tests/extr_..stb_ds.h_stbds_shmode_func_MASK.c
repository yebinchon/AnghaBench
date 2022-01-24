#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ string; } ;
typedef  TYPE_2__ stbds_hash_index ;
struct TYPE_6__ {int length; TYPE_2__* hash_table; } ;

/* Variables and functions */
 void* FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  STBDS_BUCKET_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void * FUNC5(size_t elemsize, int mode)
{
  void *a = FUNC2(0, elemsize, 0, 1);
  stbds_hash_index *h;
  FUNC1(a, 0, elemsize);
  FUNC3(a)->length = 1;
  FUNC3(a)->hash_table = h = (stbds_hash_index *) FUNC4(STBDS_BUCKET_LENGTH, NULL);
  h->string.mode = mode;
  return FUNC0(a,elemsize);
}