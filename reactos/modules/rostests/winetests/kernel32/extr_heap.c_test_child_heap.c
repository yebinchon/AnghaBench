
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heap_layout {int flags; int pattern; int force_flags; } ;
typedef int buffer ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int FLG_HEAP_PAGE_ALLOCS ;
 struct heap_layout* GetProcessHeap () ;
 int HEAP_GROWABLE ;
 int HKEY_LOCAL_MACHINE ;
 int REG_DWORD ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int ,int*,int *,int*) ;
 int heap_flags_from_global_flag (int) ;
 int ok (int,char*,char const*,...) ;
 int pRtlGetNtGlobalFlags () ;
 int strtoul (char const*,int ,int) ;
 int test_heap_checks (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_child_heap( const char *arg )
{
    struct heap_layout *heap = GetProcessHeap();
    DWORD expected = strtoul( arg, 0, 16 );
    DWORD expect_heap;

    if (expected == 0xdeadbeef)
    {
        HKEY hkey;
        expected = 0;
        if (!RegOpenKeyA( HKEY_LOCAL_MACHINE, "SYSTEM\\CurrentControlSet\\Control\\Session Manager", &hkey ))
        {
            char buffer[32];
            DWORD type, size = sizeof(buffer);

            if (!RegQueryValueExA( hkey, "GlobalFlag", 0, &type, (BYTE *)buffer, &size ))
            {
                if (type == REG_DWORD) expected = *(DWORD *)buffer;
                else if (type == REG_SZ) expected = strtoul( buffer, 0, 16 );
            }
            RegCloseKey( hkey );
        }
    }
    if (expected && !pRtlGetNtGlobalFlags())
    {
        win_skip( "global flags not set\n" );
        return;
    }

    ok( pRtlGetNtGlobalFlags() == expected,
        "%s: got global flags %08x expected %08x\n", arg, pRtlGetNtGlobalFlags(), expected );

    expect_heap = heap_flags_from_global_flag( expected );

    if (!(heap->flags & HEAP_GROWABLE) || heap->pattern == 0xffeeffee)
    {
        ok( (heap->flags & ~HEAP_GROWABLE) == 0, "%s: got heap flags %08x\n", arg, heap->flags );
    }
    else if (heap->pattern == 0xeeeeeeee && heap->flags == 0xeeeeeeee)
    {
        ok( expected & FLG_HEAP_PAGE_ALLOCS, "%s: got heap flags 0xeeeeeeee without page alloc\n", arg );
    }
    else
    {
        ok( heap->flags == (expect_heap | HEAP_GROWABLE),
            "%s: got heap flags %08x expected %08x\n", arg, heap->flags, expect_heap );
        ok( heap->force_flags == (expect_heap & ~0x18000080),
            "%s: got heap force flags %08x expected %08x\n", arg, heap->force_flags, expect_heap );
        expect_heap = heap->flags;
    }

    test_heap_checks( expect_heap );
}
