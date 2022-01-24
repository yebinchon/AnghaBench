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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5( HGLOBAL src, DWORD flags, HGLOBAL *dst )
{
    void *src_ptr, *dst_ptr;
    DWORD size;

    *dst = NULL;
    if ( !src ) return S_FALSE;

    size = FUNC2(src);

    *dst = FUNC0( flags, size );
    if ( !*dst ) return E_OUTOFMEMORY;

    src_ptr = FUNC1(src);
    dst_ptr = FUNC1(*dst);

    FUNC4(dst_ptr, src_ptr, size);

    FUNC3(*dst);
    FUNC3(src);

    return S_OK;
}