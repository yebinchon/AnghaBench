
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
 int SPI_GETMOUSEHOVERHEIGHT ;
 int SPI_SETMOUSEHOVERHEIGHT ;
 int SPI_SETMOUSEHOVERHEIGHT_REGKEY ;
 int SPI_SETMOUSEHOVERHEIGHT_VALNAME ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int const,int*,int) ;
 int eq (int,int const,char*,char*) ;
 int ok (int ,char*,unsigned int,int ,...) ;
 int sprintf (char*,char*,int const) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (int ,char*) ;
 int test_reg_key (int ,int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETMOUSEHOVERHEIGHT( void )
{
    BOOL rc;
    UINT old_height;
    const UINT vals[]={0,32767};
    unsigned int i;

    trace("testing SPI_{GET,SET}MOUSEHOVERHEIGHT\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETMOUSEHOVERHEIGHT, 0, &old_height, 0 );



    if (!test_error_msg(rc,"SPI_{GET,SET}MOUSEHOVERHEIGHT"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=SystemParametersInfoA( SPI_SETMOUSEHOVERHEIGHT, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETMOUSEHOVERHEIGHT")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETMOUSEHOVERHEIGHT, 0 );
        sprintf( buf, "%d", vals[i] );
        test_reg_key( SPI_SETMOUSEHOVERHEIGHT_REGKEY,
                      SPI_SETMOUSEHOVERHEIGHT_VALNAME, buf );

        SystemParametersInfoA( SPI_GETMOUSEHOVERHEIGHT, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        eq( v, vals[i], "SPI_{GET,SET}MOUSEHOVERHEIGHT", "%d" );
    }

    rc=SystemParametersInfoA( SPI_SETMOUSEHOVERHEIGHT, old_height, 0,
                              SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
