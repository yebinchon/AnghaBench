
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int SPI_GETFASTTASKSWITCH ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int ,int *,int ) ;
 int test_error_msg (int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETFASTTASKSWITCH( void )
{
    BOOL rc;
    BOOL v;

    trace("testing SPI_GETFASTTASKSWITCH\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETFASTTASKSWITCH, 0, &v, 0 );
    if (!test_error_msg(rc,"SPI_{GET,SET}FASTTASKSWITCH"))
        return;




}
