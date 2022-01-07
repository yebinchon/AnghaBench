
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int MB_OK ;
 int MessageBeep (int ) ;
 int SPIF_SENDCHANGE ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETBEEP ;
 int SPI_SETBEEP ;
 int SPI_SETBEEP_REGKEY ;
 int SPI_SETBEEP_VALNAME ;
 int SetLastError (int) ;
 scalar_t__ SystemParametersInfoA (int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ SystemParametersInfoW (int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ TRUE ;
 int eq (scalar_t__,scalar_t__,char*,char*) ;
 int ok (scalar_t__,char*,...) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (scalar_t__,char*) ;
 int test_reg_key (int ,int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETBEEP( void )
{
    BOOL rc;
    BOOL old_b;
    BOOL b;
    BOOL curr_val;

    trace("testing SPI_{GET,SET}BEEP\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETBEEP, 0, &old_b, 0 );
    if (!test_error_msg(rc,"SPI_{GET,SET}BEEP"))
        return;

    curr_val = TRUE;
    rc=SystemParametersInfoA( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (!test_error_msg(rc,"SPI_SETBEEP")) return;
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    test_change_message( SPI_SETBEEP, 0 );
    test_reg_key( SPI_SETBEEP_REGKEY,
                  SPI_SETBEEP_VALNAME,
                  curr_val ? "Yes" : "No" );
    rc=SystemParametersInfoA( SPI_GETBEEP, 0, &b, 0 );
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    eq( b, curr_val, "SPI_{GET,SET}BEEP", "%d" );
    rc=SystemParametersInfoW( SPI_GETBEEP, 0, &b, 0 );
    if (rc || GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
    {
        ok(rc, "SystemParametersInfoW: rc=%d err=%d\n", rc, GetLastError());
        eq( b, curr_val, "SystemParametersInfoW", "%d" );
    }


    rc=SystemParametersInfoA( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    test_change_message( SPI_SETBEEP, 0 );

    curr_val = FALSE;
    rc=SystemParametersInfoW( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (rc == FALSE && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
        rc=SystemParametersInfoA( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    ok(rc, "SystemParametersInfo: rc=%d err=%d\n", rc, GetLastError());
    test_change_message( SPI_SETBEEP, 0 );
    test_reg_key( SPI_SETBEEP_REGKEY,
                  SPI_SETBEEP_VALNAME,
                  curr_val ? "Yes" : "No" );
    rc=SystemParametersInfoA( SPI_GETBEEP, 0, &b, 0 );
    ok(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, GetLastError());
    eq( b, curr_val, "SPI_{GET,SET}BEEP", "%d" );
    rc=SystemParametersInfoW( SPI_GETBEEP, 0, &b, 0 );
    if (rc || GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
    {
        ok(rc, "SystemParametersInfoW: rc=%d err=%d\n", rc, GetLastError());
        eq( b, curr_val, "SystemParametersInfoW", "%d" );
    }
    ok( MessageBeep( MB_OK ), "Return value of MessageBeep when sound is disabled\n" );

    rc=SystemParametersInfoA( SPI_SETBEEP, old_b, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
