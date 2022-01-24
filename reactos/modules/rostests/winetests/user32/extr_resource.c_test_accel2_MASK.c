#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cmd; int fVirt; int key; } ;
typedef  int /*<<< orphan*/ * HACCEL ;
typedef  TYPE_1__ ACCEL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FVIRTKEY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    ACCEL ac[2], out[2];
    HACCEL hac;
    int res;

    ac[0].cmd   = 0;
    ac[0].fVirt = 0;
    ac[0].key   = 0;

    ac[1].cmd   = 0;
    ac[1].fVirt = 0;
    ac[1].key   = 0;

    /*
     * crashes on win2k
     * hac = CreateAcceleratorTable( NULL, 1 );
     */

    /* try a zero count */
    hac = FUNC1( &ac[0], 0 );
    FUNC5( !hac || FUNC3(hac != NULL), /* nt4 */ "fail\n");
    if (!hac) FUNC5( !FUNC2( hac ), "destroy failed\n");

    /* creating one accelerator should work */
    hac = FUNC1( &ac[0], 1 );
    FUNC5( hac != NULL , "fail\n");
    FUNC5( 1 == FUNC0( hac, out, 1 ), "copy failed\n");
    FUNC5( FUNC2( hac ), "destroy failed\n");

    /* how about two of the same type? */
    hac = FUNC1( &ac[0], 2);
    FUNC5( hac != NULL , "fail\n");
    res = FUNC0( hac, NULL, 100 );
    FUNC5( res == 2, "copy null failed %d\n", res);
    res = FUNC0( hac, NULL, 0 );
    FUNC5( res == 2, "copy null failed %d\n", res);
    res = FUNC0( hac, NULL, 1 );
    FUNC5( res == 2, "copy null failed %d\n", res);
    FUNC5( 1 == FUNC0( hac, out, 1 ), "copy 1 failed\n");
    FUNC5( 2 == FUNC0( hac, out, 2 ), "copy 2 failed\n");
    FUNC5( FUNC2( hac ), "destroy failed\n");
    /* ok( !memcmp( ac, out, sizeof ac ), "tables different\n"); */

    /* how about two of the same type with a non-zero key? */
    ac[0].key = 0x20;
    ac[1].key = 0x20;
    hac = FUNC1( &ac[0], 2);
    FUNC5( hac != NULL , "fail\n");
    FUNC5( 2 == FUNC0( hac, out, 2 ), "copy 2 failed\n");
    FUNC5( FUNC2( hac ), "destroy failed\n");
    /* ok( !memcmp( ac, out, sizeof ac ), "tables different\n"); */

    /* how about two of the same type with a non-zero virtual key? */
    ac[0].fVirt = FVIRTKEY;
    ac[0].key = 0x40;
    ac[1].fVirt = FVIRTKEY;
    ac[1].key = 0x40;
    hac = FUNC1( &ac[0], 2);
    FUNC5( hac != NULL , "fail\n");
    FUNC5( 2 == FUNC0( hac, out, 2 ), "copy 2 failed\n");
    /* ok( !memcmp( ac, out, sizeof ac ), "tables different\n"); */
    FUNC5( FUNC2( hac ), "destroy failed\n");

    /* how virtual key codes */
    ac[0].fVirt = FVIRTKEY;
    hac = FUNC1( &ac[0], 1);
    FUNC5( hac != NULL , "fail\n");
    FUNC5( 1 == FUNC0( hac, out, 2 ), "copy 2 failed\n");
    /* ok( !memcmp( ac, out, sizeof ac/2 ), "tables different\n"); */
    FUNC5( FUNC2( hac ), "destroy failed\n");

    /* how turning on all bits? */
    ac[0].cmd   = 0xffff;
    ac[0].fVirt = 0xff;
    ac[0].key   = 0xffff;
    hac = FUNC1( &ac[0], 1);
    FUNC5( hac != NULL , "fail\n");
    FUNC5( 1 == FUNC0( hac, out, 1 ), "copy 1 failed\n");
    /* ok( memcmp( ac, out, sizeof ac/2 ), "tables not different\n"); */
    FUNC5( out[0].cmd == ac[0].cmd, "cmd modified\n");
    FUNC5( out[0].fVirt == (ac[0].fVirt&0x7f), "fVirt not modified\n");
    FUNC5( out[0].key == ac[0].key, "key modified\n");
    FUNC5( FUNC2( hac ), "destroy failed\n");

    /* how turning on all bits? */
    FUNC4( ac, 0xff, sizeof ac );
    hac = FUNC1( &ac[0], 2);
    FUNC5( hac != NULL , "fail\n");
    res = FUNC0( hac, out, 2 );
    FUNC5( res == 2, "copy 2 failed %d\n", res);
    /* ok( memcmp( ac, out, sizeof ac ), "tables not different\n"); */
    FUNC5( out[0].cmd == ac[0].cmd, "cmd modified\n");
    FUNC5( out[0].fVirt == (ac[0].fVirt&0x7f), "fVirt not modified\n");
    FUNC5( out[0].key == ac[0].key, "key modified\n");
    if (res == 2)
    {
        FUNC5( out[1].cmd == ac[1].cmd, "cmd modified\n");
        FUNC5( out[1].fVirt == (ac[1].fVirt&0x7f), "fVirt not modified\n");
        FUNC5( out[1].key == ac[1].key, "key modified\n");
    }
    FUNC5( FUNC2( hac ), "destroy failed\n");
}