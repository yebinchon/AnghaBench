
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int GetSystemMetrics (int ) ;
 int NtUserSystemParametersInfo (int ,int,int*,int ) ;
 int SM_CXBORDER ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETBORDER ;
 int SPI_SETBORDER ;
 int TEST (int) ;

void
Test_SPI_SETBORDER(void)
{
    INT iOrig, iTemp = 0;


    NtUserSystemParametersInfo(SPI_GETBORDER, 0, &iOrig, 0);


    NtUserSystemParametersInfo(SPI_SETBORDER, 0, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBORDER, 0, &iTemp, 0);
    TEST(iTemp == 1);
    TEST(GetSystemMetrics(SM_CXBORDER) == 1);


    NtUserSystemParametersInfo(SPI_SETBORDER, 1, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBORDER, 0, &iTemp, 0);
    TEST(iTemp == 1);



    NtUserSystemParametersInfo(SPI_SETBORDER, 2, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBORDER, 0, &iTemp, 0);
    TEST(iTemp == 2);
    TEST(GetSystemMetrics(SM_CXBORDER) == 1);


    NtUserSystemParametersInfo(SPI_SETBORDER, iOrig, ((void*)0), SPIF_UPDATEINIFILE);

}
