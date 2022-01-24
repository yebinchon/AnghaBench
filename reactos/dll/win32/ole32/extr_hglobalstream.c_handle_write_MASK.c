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
struct handle_wrapper {scalar_t__ size; int /*<<< orphan*/  lock; scalar_t__ hglobal; } ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,void const*,scalar_t__) ; 

__attribute__((used)) static ULONG FUNC7(struct handle_wrapper *handle, ULONG *pos, const void *source, ULONG len)
{
    void *dest;

    if (!len)
        return 0;

    FUNC0(&handle->lock);

    if (*pos + len > handle->size)
    {
        HGLOBAL hglobal = FUNC2(handle->hglobal, *pos + len, GMEM_MOVEABLE);
        if (hglobal)
        {
            handle->hglobal = hglobal;
            handle->size = *pos + len;
        }
        else
        {
            len = 0;
            goto done;
        }
    }

    dest = FUNC1(handle->hglobal);
    if (dest)
    {
        FUNC6((char *)dest + *pos, source, len);
        *pos += len;
        FUNC3(handle->hglobal);
    }
    else
    {
        FUNC5("write to invalid hglobal %p\n", handle->hglobal);
        /* len = 0; */
    }

done:
    FUNC4(&handle->lock);
    return len;
}