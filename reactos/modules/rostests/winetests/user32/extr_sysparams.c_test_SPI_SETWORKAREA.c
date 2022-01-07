
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int right; int bottom; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int BOOL ;


 int EqualRect (TYPE_1__*,TYPE_1__*) ;
 int GetLastError () ;
 int SPIF_SENDCHANGE ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETWORKAREA ;
 int SPI_SETWORKAREA ;
 int SetLastError (int) ;
 int SetRect (TYPE_1__*,int ,int ,int,int) ;
 int SystemParametersInfoA (int ,int ,TYPE_1__*,int) ;
 int eq (int ,int ,char*,char*) ;
 int ok (int,char*,int,int) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (int,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETWORKAREA( void )
{
    BOOL rc;
    RECT old_area;
    RECT area;
    RECT curr_val;

    trace("testing SPI_{GET,SET}WORKAREA\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA(SPI_GETWORKAREA, 0, &old_area, 0);
    if (!test_error_msg(rc,"SPI_{GET,SET}WORKAREA"))
        return;







    SetRect(&curr_val, old_area.left, old_area.top, old_area.right - 1, old_area.bottom - 1);
    rc=SystemParametersInfoA( SPI_SETWORKAREA, 0, &curr_val,
                              SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (!test_error_msg(rc,"SPI_SETWORKAREA")) return;
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    rc=SystemParametersInfoA( SPI_GETWORKAREA, 0, &area, 0 );
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    if( !EqualRect( &area, &curr_val))
        test_change_message( SPI_SETWORKAREA, 0);
    eq( area.left, curr_val.left, "left", "%d" );
    eq( area.top, curr_val.top, "top", "%d" );

    ok( area.right >= curr_val.right - 16 && area.right < curr_val.right + 16,
        "right: got %d instead of %d\n", area.right, curr_val.right );
    ok( area.bottom >= curr_val.bottom - 16 && area.bottom < curr_val.bottom + 16,
        "bottom: got %d instead of %d\n", area.bottom, curr_val.bottom );
    curr_val = area;
    rc=SystemParametersInfoA( SPI_SETWORKAREA, 0, &old_area,
                              SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
    rc=SystemParametersInfoA( SPI_GETWORKAREA, 0, &area, 0 );
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    if( !EqualRect( &area, &curr_val))
        test_change_message( SPI_SETWORKAREA, 0 );
    eq( area.left, old_area.left, "left", "%d" );
    eq( area.top, old_area.top, "top", "%d" );

    ok( area.right >= old_area.right - 16 && area.right < old_area.right + 16,
        "right: got %d instead of %d\n", area.right, old_area.right );
    ok( area.bottom >= old_area.bottom - 16 && area.bottom < old_area.bottom + 16,
        "bottom: got %d instead of %d\n", area.bottom, old_area.bottom );
}
