
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NtUserSystemParametersInfo (int ,int ,char*,int ) ;
 int SPI_SETFASTTASKSWITCH ;
 int TEST (int) ;

void
Test_SPI_SETFASTTASKSWITCH(void)
{
    char buf[10];
    TEST(NtUserSystemParametersInfo(SPI_SETFASTTASKSWITCH, 0, 0, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_SETFASTTASKSWITCH, 0, buf, 0) == 1);


}
