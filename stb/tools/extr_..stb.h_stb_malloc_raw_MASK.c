#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  STB__chunk_raw ; 
 void* FUNC0 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stb_alloc_alignment ; 

void *FUNC1(void *context, size_t size)
{
   return FUNC0(context, size, STB__chunk_raw, stb_alloc_alignment);
}