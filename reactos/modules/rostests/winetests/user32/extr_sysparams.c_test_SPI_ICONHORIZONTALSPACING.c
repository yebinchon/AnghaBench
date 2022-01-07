
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int BOOL ;


 int GetLastError () ;
 int SPIF_UPDATEINIFILE ;
 int SPI_ICONHORIZONTALSPACING ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int,int*,int ) ;
 int dotest_spi_iconhorizontalspacing (int) ;
 int ok (int ,char*,int ,int ) ;
 int test_error_msg (int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_ICONHORIZONTALSPACING( void )
{
    BOOL rc;
    INT old_spacing;

    trace("testing SPI_ICONHORIZONTALSPACING\n");
    SetLastError(0xdeadbeef);

    rc=SystemParametersInfoA( SPI_ICONHORIZONTALSPACING, 0, &old_spacing, 0 );
    if (!test_error_msg(rc,"SPI_ICONHORIZONTALSPACING"))
        return;

    if (!dotest_spi_iconhorizontalspacing( old_spacing - 1)) return;
    dotest_spi_iconhorizontalspacing( 10);

    rc=SystemParametersInfoA( SPI_ICONHORIZONTALSPACING, old_spacing, 0, SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
