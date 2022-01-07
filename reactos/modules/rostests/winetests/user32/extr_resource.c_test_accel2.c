
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cmd; int fVirt; int key; } ;
typedef int * HACCEL ;
typedef TYPE_1__ ACCEL ;


 int CopyAcceleratorTableA (int *,TYPE_1__*,int) ;
 int * CreateAcceleratorTableA (TYPE_1__*,int) ;
 int DestroyAcceleratorTable (int *) ;
 void* FVIRTKEY ;
 scalar_t__ broken (int ) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_accel2(void)
{
    ACCEL ac[2], out[2];
    HACCEL hac;
    int res;

    ac[0].cmd = 0;
    ac[0].fVirt = 0;
    ac[0].key = 0;

    ac[1].cmd = 0;
    ac[1].fVirt = 0;
    ac[1].key = 0;







    hac = CreateAcceleratorTableA( &ac[0], 0 );
    ok( !hac || broken(hac != ((void*)0)), "fail\n");
    if (!hac) ok( !DestroyAcceleratorTable( hac ), "destroy failed\n");


    hac = CreateAcceleratorTableA( &ac[0], 1 );
    ok( hac != ((void*)0) , "fail\n");
    ok( 1 == CopyAcceleratorTableA( hac, out, 1 ), "copy failed\n");
    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");


    hac = CreateAcceleratorTableA( &ac[0], 2);
    ok( hac != ((void*)0) , "fail\n");
    res = CopyAcceleratorTableA( hac, ((void*)0), 100 );
    ok( res == 2, "copy null failed %d\n", res);
    res = CopyAcceleratorTableA( hac, ((void*)0), 0 );
    ok( res == 2, "copy null failed %d\n", res);
    res = CopyAcceleratorTableA( hac, ((void*)0), 1 );
    ok( res == 2, "copy null failed %d\n", res);
    ok( 1 == CopyAcceleratorTableA( hac, out, 1 ), "copy 1 failed\n");
    ok( 2 == CopyAcceleratorTableA( hac, out, 2 ), "copy 2 failed\n");
    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");



    ac[0].key = 0x20;
    ac[1].key = 0x20;
    hac = CreateAcceleratorTableA( &ac[0], 2);
    ok( hac != ((void*)0) , "fail\n");
    ok( 2 == CopyAcceleratorTableA( hac, out, 2 ), "copy 2 failed\n");
    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");



    ac[0].fVirt = FVIRTKEY;
    ac[0].key = 0x40;
    ac[1].fVirt = FVIRTKEY;
    ac[1].key = 0x40;
    hac = CreateAcceleratorTableA( &ac[0], 2);
    ok( hac != ((void*)0) , "fail\n");
    ok( 2 == CopyAcceleratorTableA( hac, out, 2 ), "copy 2 failed\n");

    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");


    ac[0].fVirt = FVIRTKEY;
    hac = CreateAcceleratorTableA( &ac[0], 1);
    ok( hac != ((void*)0) , "fail\n");
    ok( 1 == CopyAcceleratorTableA( hac, out, 2 ), "copy 2 failed\n");

    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");


    ac[0].cmd = 0xffff;
    ac[0].fVirt = 0xff;
    ac[0].key = 0xffff;
    hac = CreateAcceleratorTableA( &ac[0], 1);
    ok( hac != ((void*)0) , "fail\n");
    ok( 1 == CopyAcceleratorTableA( hac, out, 1 ), "copy 1 failed\n");

    ok( out[0].cmd == ac[0].cmd, "cmd modified\n");
    ok( out[0].fVirt == (ac[0].fVirt&0x7f), "fVirt not modified\n");
    ok( out[0].key == ac[0].key, "key modified\n");
    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");


    memset( ac, 0xff, sizeof ac );
    hac = CreateAcceleratorTableA( &ac[0], 2);
    ok( hac != ((void*)0) , "fail\n");
    res = CopyAcceleratorTableA( hac, out, 2 );
    ok( res == 2, "copy 2 failed %d\n", res);

    ok( out[0].cmd == ac[0].cmd, "cmd modified\n");
    ok( out[0].fVirt == (ac[0].fVirt&0x7f), "fVirt not modified\n");
    ok( out[0].key == ac[0].key, "key modified\n");
    if (res == 2)
    {
        ok( out[1].cmd == ac[1].cmd, "cmd modified\n");
        ok( out[1].fVirt == (ac[1].fVirt&0x7f), "fVirt not modified\n");
        ok( out[1].key == ac[1].key, "key modified\n");
    }
    ok( DestroyAcceleratorTable( hac ), "destroy failed\n");
}
