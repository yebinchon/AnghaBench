
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vals ;
typedef int UINT ;
typedef int DWORD ;
typedef int BOOL ;


 int const GetLastError () ;
 int SPIF_SENDCHANGE ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETFONTSMOOTHING ;
 int SPI_GETFONTSMOOTHINGCONTRAST ;
 int SPI_GETFONTSMOOTHINGORIENTATION ;
 int SPI_GETFONTSMOOTHINGTYPE ;
 int SPI_SETFONTSMOOTHING ;
 int SPI_SETFONTSMOOTHINGCONTRAST ;
 int SPI_SETFONTSMOOTHINGCONTRAST_VALNAME ;
 int SPI_SETFONTSMOOTHINGORIENTATION ;
 int SPI_SETFONTSMOOTHINGORIENTATION_VALNAME ;
 int SPI_SETFONTSMOOTHINGTYPE ;
 int SPI_SETFONTSMOOTHINGTYPE_VALNAME ;
 int SPI_SETFONTSMOOTHING_REGKEY ;
 int SPI_SETFONTSMOOTHING_VALNAME ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int const,int*,int) ;
 int* UlongToPtr (int const) ;
 int eq (int,int,char*,char*) ;
 scalar_t__ iswin9x ;
 int ok (int,char*,int,int const,...) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (int,char*) ;
 int test_reg_key (int ,int ,char*) ;
 int test_reg_key_dword (int ,int ,int const*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETFONTSMOOTHING( void )
{
    BOOL rc;
    BOOL old_b;
    DWORD old_type, old_contrast, old_orient;
    const UINT vals[]={0xffffffff,0,1,2};
    unsigned int i;

    trace("testing SPI_{GET,SET}FONTSMOOTHING\n");
    if( iswin9x) return;
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETFONTSMOOTHING, 0, &old_b, 0 );
    if (!test_error_msg(rc,"SPI_{GET,SET}FONTSMOOTHING"))
        return;
    SystemParametersInfoA( SPI_GETFONTSMOOTHINGTYPE, 0, &old_type, 0 );
    SystemParametersInfoA( SPI_GETFONTSMOOTHINGCONTRAST, 0, &old_contrast, 0 );
    SystemParametersInfoA( SPI_GETFONTSMOOTHINGORIENTATION, 0, &old_orient, 0 );

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;

        rc=SystemParametersInfoA( SPI_SETFONTSMOOTHING, vals[i], 0,
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETFONTSMOOTHING")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETFONTSMOOTHING, 0 );
        test_reg_key( SPI_SETFONTSMOOTHING_REGKEY,
                      SPI_SETFONTSMOOTHING_VALNAME,
                      vals[i] ? "2" : "0" );

        rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGTYPE, 0, UlongToPtr(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETFONTSMOOTHINGTYPE")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETFONTSMOOTHINGTYPE, 0 );
        test_reg_key_dword( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGTYPE_VALNAME, &vals[i] );

        rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGCONTRAST, 0, UlongToPtr(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETFONTSMOOTHINGCONTRAST")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETFONTSMOOTHINGCONTRAST, 0 );
        test_reg_key_dword( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGCONTRAST_VALNAME, &vals[i] );

        rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGORIENTATION, 0, UlongToPtr(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETFONTSMOOTHINGORIENTATION")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETFONTSMOOTHINGORIENTATION, 0 );
        test_reg_key_dword( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGORIENTATION_VALNAME, &vals[i] );

        rc=SystemParametersInfoA( SPI_GETFONTSMOOTHING, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        eq( v, vals[i] ? 1 : 0, "SPI_GETFONTSMOOTHING", "%d" );

        rc=SystemParametersInfoA( SPI_GETFONTSMOOTHINGTYPE, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        ok( v == vals[i], "wrong value %x/%x\n", v, vals[i] );

        rc=SystemParametersInfoA( SPI_GETFONTSMOOTHINGCONTRAST, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        ok( v == vals[i], "wrong value %x/%x\n", v, vals[i] );

        rc=SystemParametersInfoA( SPI_GETFONTSMOOTHINGORIENTATION, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        ok( v == vals[i], "wrong value %x/%x\n", v, vals[i] );
    }

    rc=SystemParametersInfoA( SPI_SETFONTSMOOTHING, old_b, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
    rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGTYPE, old_type, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
    rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGCONTRAST, old_contrast, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
    rc=SystemParametersInfoA( SPI_SETFONTSMOOTHINGORIENTATION, old_orient, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
