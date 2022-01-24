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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC3(struct handle_wrapper *handle, ULONG size)
{
    HRESULT hr = S_OK;

    FUNC0(&handle->lock);

    if (handle->size != size)
    {
        HGLOBAL hglobal = FUNC1(handle->hglobal, size, GMEM_MOVEABLE);
        if (hglobal)
        {
            handle->hglobal = hglobal;
            handle->size = size;
        }
        else
            hr = E_OUTOFMEMORY;
    }

    FUNC2(&handle->lock);
    return hr;
}