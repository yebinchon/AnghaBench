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
typedef  int SIZE_T ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HEAP_FREE_CHECKING_ENABLED ; 
 int HEAP_PAGE_ALLOCS ; 
 int /*<<< orphan*/  HEAP_REALLOC_IN_PLACE_ONLY ; 
 int HEAP_TAIL_CHECKING_ENABLED ; 
 int HEAP_VALIDATE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static void FUNC11( DWORD flags )
{
    BYTE old, *p, *p2;
    BOOL ret;
    SIZE_T i, size, large_size = 3000 * 1024 + 37;

    if (flags & HEAP_PAGE_ALLOCS) return;  /* no tests for that case yet */
    FUNC10( "testing heap flags %08x\n", flags );

    p = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, 17 );
    FUNC8( p != NULL, "HeapAlloc failed\n" );

    ret = FUNC5( FUNC0(), 0, p );
    FUNC8( ret, "HeapValidate failed\n" );

    size = FUNC4( FUNC0(), 0, p );
    FUNC8( size == 17, "Wrong size %lu\n", size );

    FUNC8( p[14] == 0, "wrong data %x\n", p[14] );
    FUNC8( p[15] == 0, "wrong data %x\n", p[15] );
    FUNC8( p[16] == 0, "wrong data %x\n", p[16] );

    if (flags & HEAP_TAIL_CHECKING_ENABLED)
    {
        FUNC8( p[17] == 0xab, "wrong padding %x\n", p[17] );
        FUNC8( p[18] == 0xab, "wrong padding %x\n", p[18] );
        FUNC8( p[19] == 0xab, "wrong padding %x\n", p[19] );
    }

    p2 = FUNC3( FUNC0(), HEAP_REALLOC_IN_PLACE_ONLY, p, 14 );
    if (p2 == p)
    {
        if (flags & HEAP_TAIL_CHECKING_ENABLED)
        {
            FUNC8( p[14] == 0xab, "wrong padding %x\n", p[14] );
            FUNC8( p[15] == 0xab, "wrong padding %x\n", p[15] );
            FUNC8( p[16] == 0xab, "wrong padding %x\n", p[16] );
        }
        else
        {
            FUNC8( p[14] == 0, "wrong padding %x\n", p[14] );
            FUNC8( p[15] == 0, "wrong padding %x\n", p[15] );
        }
    }
    else FUNC9( "realloc in place failed\n");

    ret = FUNC2( FUNC0(), 0, p );
    FUNC8( ret, "HeapFree failed\n" );

    p = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, 17 );
    FUNC8( p != NULL, "HeapAlloc failed\n" );
    old = p[17];
    p[17] = 0xcc;

    if (flags & HEAP_TAIL_CHECKING_ENABLED)
    {
        ret = FUNC5( FUNC0(), 0, p );
        FUNC8( !ret, "HeapValidate succeeded\n" );

        /* other calls only check when HEAP_VALIDATE is set */
        if (flags & HEAP_VALIDATE)
        {
            size = FUNC4( FUNC0(), 0, p );
            FUNC8( size == ~(SIZE_T)0 || FUNC6(size == ~0u), "Wrong size %lu\n", size );

            p2 = FUNC3( FUNC0(), 0, p, 14 );
            FUNC8( p2 == NULL, "HeapReAlloc succeeded\n" );

            ret = FUNC2( FUNC0(), 0, p );
            FUNC8( !ret || FUNC6(sizeof(void*) == 8), /* not caught on xp64 */
                "HeapFree succeeded\n" );
        }

        p[17] = old;
        size = FUNC4( FUNC0(), 0, p );
        FUNC8( size == 17, "Wrong size %lu\n", size );

        p2 = FUNC3( FUNC0(), 0, p, 14 );
        FUNC8( p2 != NULL, "HeapReAlloc failed\n" );
        p = p2;
    }

    ret = FUNC2( FUNC0(), 0, p );
    FUNC8( ret, "HeapFree failed\n" );

    p = FUNC1( FUNC0(), 0, 37 );
    FUNC8( p != NULL, "HeapAlloc failed\n" );
    FUNC7( p, 0xcc, 37 );

    ret = FUNC2( FUNC0(), 0, p );
    FUNC8( ret, "HeapFree failed\n" );

    if (flags & HEAP_FREE_CHECKING_ENABLED)
    {
        FUNC8( p[16] == 0xee, "wrong data %x\n", p[16] );
        FUNC8( p[17] == 0xfe, "wrong data %x\n", p[17] );
        FUNC8( p[18] == 0xee, "wrong data %x\n", p[18] );
        FUNC8( p[19] == 0xfe, "wrong data %x\n", p[19] );

        ret = FUNC5( FUNC0(), 0, NULL );
        FUNC8( ret, "HeapValidate failed\n" );

        old = p[16];
        p[16] = 0xcc;
        ret = FUNC5( FUNC0(), 0, NULL );
        FUNC8( !ret, "HeapValidate succeeded\n" );

        p[16] = old;
        ret = FUNC5( FUNC0(), 0, NULL );
        FUNC8( ret, "HeapValidate failed\n" );
    }

    /* now test large blocks */

    p = FUNC1( FUNC0(), 0, large_size );
    FUNC8( p != NULL, "HeapAlloc failed\n" );

    ret = FUNC5( FUNC0(), 0, p );
    FUNC8( ret, "HeapValidate failed\n" );

    size = FUNC4( FUNC0(), 0, p );
    FUNC8( size == large_size, "Wrong size %lu\n", size );

    FUNC8( p[large_size - 2] == 0, "wrong data %x\n", p[large_size - 2] );
    FUNC8( p[large_size - 1] == 0, "wrong data %x\n", p[large_size - 1] );

    if (flags & HEAP_TAIL_CHECKING_ENABLED)
    {
        /* Windows doesn't do tail checking on large blocks */
        FUNC8( p[large_size] == 0xab || FUNC6(p[large_size] == 0), "wrong data %x\n", p[large_size] );
        FUNC8( p[large_size+1] == 0xab || FUNC6(p[large_size+1] == 0), "wrong data %x\n", p[large_size+1] );
        FUNC8( p[large_size+2] == 0xab || FUNC6(p[large_size+2] == 0), "wrong data %x\n", p[large_size+2] );
        if (p[large_size] == 0xab)
        {
            p[large_size] = 0xcc;
            ret = FUNC5( FUNC0(), 0, p );
            FUNC8( !ret, "HeapValidate succeeded\n" );

            /* other calls only check when HEAP_VALIDATE is set */
            if (flags & HEAP_VALIDATE)
            {
                size = FUNC4( FUNC0(), 0, p );
                FUNC8( size == ~(SIZE_T)0, "Wrong size %lu\n", size );

                p2 = FUNC3( FUNC0(), 0, p, large_size - 3 );
                FUNC8( p2 == NULL, "HeapReAlloc succeeded\n" );

                ret = FUNC2( FUNC0(), 0, p );
                FUNC8( !ret, "HeapFree succeeded\n" );
            }
            p[large_size] = 0xab;
        }
    }

    ret = FUNC2( FUNC0(), 0, p );
    FUNC8( ret, "HeapFree failed\n" );

    /* test block sizes when tail checking */
    if (flags & HEAP_TAIL_CHECKING_ENABLED)
    {
        for (size = 0; size < 64; size++)
        {
            p = FUNC1( FUNC0(), 0, size );
            for (i = 0; i < 32; i++) if (p[size + i] != 0xab) break;
            FUNC8( i >= 8, "only %lu tail bytes for size %lu\n", i, size );
            FUNC2( FUNC0(), 0, p );
        }
    }
}