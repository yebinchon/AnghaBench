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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (size_t) ; 

void* FUNC3(size_t _nmemb, size_t _size)
{
   size_t nSize = _nmemb * _size;
   size_t cSize = FUNC2(nSize);

   if ( (_nmemb > ((size_t)-1 / _size))  || (cSize<nSize))
      return NULL;

   return FUNC1(FUNC0(), HEAP_ZERO_MEMORY, cSize );
}