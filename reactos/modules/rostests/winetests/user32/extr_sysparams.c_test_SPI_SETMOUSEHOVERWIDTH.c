
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vals ;
typedef int UINT ;
typedef int BOOL ;


 int GetLastError () ;
 int SPIF_SENDCHANGE ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETMOUSEHOVERWIDTH ;
 int SPI_SETMOUSEHOVERWIDTH ;
 int SPI_SETMOUSEHOVERWIDTH_REGKEY ;
 int SPI_SETMOUSEHOVERWIDTH_VALNAME ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int const,int*,int) ;
 int eq (int,int const,char*,char*) ;
 int ok (int ,char*,unsigned int,int ,...) ;
 int sprintf (char*,char*,int const) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (int ,char*) ;
 int test_reg_key (int ,int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETMOUSEHOVERWIDTH( void )
{
    BOOL rc;
    UINT old_width;
    const UINT vals[]={0,32767};
    unsigned int i;

    trace("testing SPI_{GET,SET}MOUSEHOVERWIDTH\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETMOUSEHOVERWIDTH, 0, &old_width, 0 );



    if (!test_error_msg(rc,"SPI_{GET,SET}MOUSEHOVERWIDTH"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=SystemParametersInfoA( SPI_SETMOUSEHOVERWIDTH, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETMOUSEHOVERWIDTH")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETMOUSEHOVERWIDTH, 0 );
        sprintf( buf, "%d", vals[i] );
        test_reg_key( SPI_SETMOUSEHOVERWIDTH_REGKEY,
                      SPI_SETMOUSEHOVERWIDTH_VALNAME, buf );

        SystemParametersInfoA( SPI_GETMOUSEHOVERWIDTH, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        eq( v, vals[i], "SPI_{GET,SET}MOUSEHOVERWIDTH", "%d" );
    }

    rc=SystemParametersInfoA( SPI_SETMOUSEHOVERWIDTH, old_width, 0,
                              SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
