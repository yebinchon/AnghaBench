#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bstr_cache_entry_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 unsigned int BUCKET_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bstr_t ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 TYPE_1__ u ; 

__attribute__((used)) static inline bstr_cache_entry_t *FUNC2(size_t size)
{
    unsigned cache_idx = FUNC0(bstr_t, u.ptr[size+sizeof(WCHAR)-1])/BUCKET_SIZE;
    return FUNC1(cache_idx);
}