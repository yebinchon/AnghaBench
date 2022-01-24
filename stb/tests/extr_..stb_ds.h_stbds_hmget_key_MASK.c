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
typedef  int stbds_temp ;
struct TYPE_4__ {TYPE_2__* storage; } ;
typedef  TYPE_1__ stbds_hash_index ;
struct TYPE_5__ {int* index; } ;
typedef  TYPE_2__ stbds_hash_bucket ;
typedef  size_t ptrdiff_t ;
struct TYPE_6__ {int length; scalar_t__ hash_table; } ;

/* Variables and functions */
 void* FUNC0 (int,size_t) ; 
 size_t STBDS_BUCKET_MASK ; 
 size_t STBDS_BUCKET_SHIFT ; 
 void* FUNC1 (void*,size_t) ; 
 int STBDS_INDEX_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC4 (void*) ; 
 size_t FUNC5 (void*,size_t,void*,size_t,int) ; 

void * FUNC6(void *a, size_t elemsize, void *key, size_t keysize, int mode)
{
  if (a == NULL) {
    // make it non-empty so we can return a temp
    a = FUNC3(0, elemsize, 0, 1);
    FUNC4(a)->length += 1;
    FUNC2(a, 0, elemsize);
    stbds_temp(a) = STBDS_INDEX_EMPTY;
    // adjust a to point after the default element
    return FUNC0(a,elemsize);
  } else {
    stbds_hash_index *table;
    void *raw_a = FUNC1(a,elemsize);
    // adjust a to point to the default element
    table = (stbds_hash_index *) FUNC4(raw_a)->hash_table;
    if (table == 0) {
      stbds_temp(raw_a) = -1;
    } else {
      ptrdiff_t slot = FUNC5(a, elemsize, key, keysize, mode);
      if (slot < 0) {
        stbds_temp(raw_a) = STBDS_INDEX_EMPTY;
      } else {
        stbds_hash_bucket *b = &table->storage[slot >> STBDS_BUCKET_SHIFT];
        stbds_temp(raw_a) = b->index[slot & STBDS_BUCKET_MASK];
      }
    }
    return a;
  }
}