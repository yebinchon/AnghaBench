
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atoOrig ;
struct TYPE_3__ {int cbSize; } ;
typedef TYPE_1__ ACCESSTIMEOUT ;


 int ASSERT (int) ;
 int NtUserSystemParametersInfo (int ,int,TYPE_1__*,int ) ;
 int SPI_GETACCESSTIMEOUT ;
 int SPI_SETACCESSTIMEOUT ;
 int TEST (int) ;

void
Test_SPI_SETACCESSTIMEOUT(void)
{
    ACCESSTIMEOUT atoOrig, atoTmp;


    atoOrig.cbSize = sizeof(ACCESSTIMEOUT);
    ASSERT(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 0, &atoOrig, 0) == 1);

    atoTmp.cbSize = sizeof(ACCESSTIMEOUT) - 1;
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT) + 1;
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 1);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, -1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT), &atoTmp, 0) == 1);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT)-1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    TEST(NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT)+1, &atoTmp, 0) == 0);


    ASSERT(NtUserSystemParametersInfo(SPI_SETACCESSTIMEOUT, sizeof(atoOrig), &atoOrig, 0) == 1);
}
