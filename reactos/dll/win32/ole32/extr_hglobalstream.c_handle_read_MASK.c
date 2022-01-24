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
struct handle_wrapper {scalar_t__ size; int /*<<< orphan*/  lock; int /*<<< orphan*/  hglobal; } ;
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static ULONG FUNC7(struct handle_wrapper *handle, ULONG *pos, void *dest, ULONG len)
{
    void *source;

    FUNC0(&handle->lock);

    if (*pos < handle->size)
        len = FUNC6(handle->size - *pos, len);
    else
        len = 0;

    source = FUNC1(handle->hglobal);
    if (source)
    {
        FUNC5(dest, (char *)source + *pos, len);
        *pos += len;
        FUNC2(handle->hglobal);
    }
    else
    {
        FUNC4("read from invalid hglobal %p\n", handle->hglobal);
        len = 0;
    }

    FUNC3(&handle->lock);
    return len;
}