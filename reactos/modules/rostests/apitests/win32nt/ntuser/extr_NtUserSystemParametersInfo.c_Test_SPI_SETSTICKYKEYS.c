
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int dwFlags; } ;
typedef TYPE_1__ STICKYKEYS ;


 int ASSERT (int) ;
 int NtUserSystemParametersInfo (int ,int,TYPE_1__*,int ) ;
 int SPI_GETSTICKYKEYS ;
 int SPI_SETSTICKYKEYS ;
 int TEST (int) ;

void
Test_SPI_SETSTICKYKEYS(void)
{
    STICKYKEYS skOrig, sk;


    skOrig.cbSize = sizeof(STICKYKEYS);
    ASSERT(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, 0, &skOrig, 0) == 1);

    sk.cbSize = sizeof(STICKYKEYS)+1;
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, 0, &sk, 0) == 0);

    sk.cbSize = sizeof(STICKYKEYS)-1;
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, 0, &sk, 0) == 0);

    sk.cbSize = sizeof(STICKYKEYS);
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, 1, &sk, 0) == 0);
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, -1, &sk, 0) == 0);
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, sk.cbSize, &sk, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, sk.cbSize-1, &sk, 0) == 0);
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, sk.cbSize+1, &sk, 0) == 0);

    sk = skOrig;
    sk.dwFlags = (skOrig.dwFlags ^ 1);
    TEST(NtUserSystemParametersInfo(SPI_SETSTICKYKEYS, sk.cbSize+1, &sk, 0) == 0);
    TEST(NtUserSystemParametersInfo(SPI_SETSTICKYKEYS, sk.cbSize-1, &sk, 0) == 0);
    TEST(NtUserSystemParametersInfo(SPI_SETSTICKYKEYS, sk.cbSize, &sk, 0) == 1);

    sk = skOrig;
    TEST(NtUserSystemParametersInfo(SPI_GETSTICKYKEYS, 0, &sk, 0) == 1);
    TEST(sk.dwFlags == (skOrig.dwFlags ^ 1));


    skOrig.cbSize = sizeof(STICKYKEYS);
    ASSERT(NtUserSystemParametersInfo(SPI_SETSTICKYKEYS, 0, &skOrig, 0) == 1);

}
