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
struct heap_layout {int flags; int pattern; int force_flags; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FLG_HEAP_PAGE_ALLOCS ; 
 struct heap_layout* FUNC0 () ; 
 int HEAP_GROWABLE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int REG_DWORD ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*,...) ; 
 int FUNC6 () ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( const char *arg )
{
    struct heap_layout *heap = FUNC0();
    DWORD expected = FUNC7( arg, 0, 16 );
    DWORD expect_heap;

    if (expected == 0xdeadbeef)  /* expected value comes from Session Manager global flags */
    {
        HKEY hkey;
        expected = 0;
        if (!FUNC2( HKEY_LOCAL_MACHINE, "SYSTEM\\CurrentControlSet\\Control\\Session Manager", &hkey ))
        {
            char buffer[32];
            DWORD type, size = sizeof(buffer);

            if (!FUNC3( hkey, "GlobalFlag", 0, &type, (BYTE *)buffer, &size ))
            {
                if (type == REG_DWORD) expected = *(DWORD *)buffer;
                else if (type == REG_SZ) expected = FUNC7( buffer, 0, 16 );
            }
            FUNC1( hkey );
        }
    }
    if (expected && !FUNC6())  /* not working on NT4 */
    {
        FUNC9( "global flags not set\n" );
        return;
    }

    FUNC5( FUNC6() == expected,
        "%s: got global flags %08x expected %08x\n", arg, FUNC6(), expected );

    expect_heap = FUNC4( expected );

    if (!(heap->flags & HEAP_GROWABLE) || heap->pattern == 0xffeeffee)  /* vista layout */
    {
        FUNC5( (heap->flags & ~HEAP_GROWABLE) == 0, "%s: got heap flags %08x\n", arg, heap->flags );
    }
    else if (heap->pattern == 0xeeeeeeee && heap->flags == 0xeeeeeeee)
    {
        FUNC5( expected & FLG_HEAP_PAGE_ALLOCS, "%s: got heap flags 0xeeeeeeee without page alloc\n", arg );
    }
    else
    {
        FUNC5( heap->flags == (expect_heap | HEAP_GROWABLE),
            "%s: got heap flags %08x expected %08x\n", arg, heap->flags, expect_heap );
        FUNC5( heap->force_flags == (expect_heap & ~0x18000080),
            "%s: got heap force flags %08x expected %08x\n", arg, heap->force_flags, expect_heap );
        expect_heap = heap->flags;
    }

    FUNC8( expect_heap );
}