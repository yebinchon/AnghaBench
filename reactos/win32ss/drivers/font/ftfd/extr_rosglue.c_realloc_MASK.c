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
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*) ; 
 int /*<<< orphan*/  TAG_FREETYPE ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

void *
FUNC3(void *Object, size_t Size)
{
    void *NewObject;
    size_t CopySize;

    NewObject = FUNC0(0, sizeof(size_t) + Size, TAG_FREETYPE);
    if (NewObject != NULL)
    {
        *((size_t *)NewObject) = Size;
        NewObject = (void *)((size_t *)NewObject + 1);
        CopySize = *((size_t *)Object - 1);
        if (Size < CopySize)
        {
            CopySize = Size;
        }
        FUNC2(NewObject, Object, CopySize);
        FUNC1((size_t *)Object - 1);
    }

    return NewObject;
}