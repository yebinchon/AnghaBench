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
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (size_t) ; 

void* FUNC5(void* _ptr, size_t _size)
{
   size_t nSize;

   if (_ptr == NULL)
      return FUNC4(_size);

   if (_size == 0)
   {
   	   FUNC3(_ptr);
       return NULL;
   }

   nSize = FUNC2(_size);

   /* check for integer overflow */
   if (nSize<_size)
       return NULL;

   return FUNC1(FUNC0(), 0, _ptr, nSize);
}