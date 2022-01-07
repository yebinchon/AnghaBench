
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int NtUserSystemParametersInfo (int ,int,int*,int ) ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETMOUSE ;
 int SPI_SETMOUSE ;
 int TEST (int) ;

void
Test_SPI_SETMOUSE(void)
{
    INT aiOrig[3], aiTemp[3];


    NtUserSystemParametersInfo(SPI_GETMOUSE, 0, aiOrig, 0);


    TEST(NtUserSystemParametersInfo(SPI_GETMOUSE, 0, aiTemp, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETMOUSE, 1, aiTemp, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETMOUSE, -1, aiTemp, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETMOUSE, 0xdeadbeef, aiTemp, 0) == 1);


    aiTemp[0] = aiOrig[0] + 1;
    aiTemp[1] = aiOrig[1] - 1;
    aiTemp[2] = aiOrig[2] + 2;
    NtUserSystemParametersInfo(SPI_SETMOUSE, 2, aiTemp, SPIF_UPDATEINIFILE);
    aiTemp[0] = aiTemp[1] = aiTemp[2] = 0;


    NtUserSystemParametersInfo(SPI_GETMOUSE, 0, aiTemp, 0);


    TEST(aiTemp[0] == aiOrig[0] + 1);
    TEST(aiTemp[1] == aiOrig[1] - 1);
    TEST(aiTemp[2] == aiOrig[2] + 2);




    NtUserSystemParametersInfo(SPI_SETMOUSE, 0, aiOrig, SPIF_UPDATEINIFILE);
}
