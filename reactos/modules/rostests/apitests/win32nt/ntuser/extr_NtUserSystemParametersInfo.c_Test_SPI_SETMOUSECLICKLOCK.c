
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPI_GETMOUSECLICKLOCK ;
 int SPI_SETMOUSECLICKLOCK ;
 int Test_UserPref (int ,int ,int ) ;
 int UPM_CLICKLOCK ;

void
Test_SPI_SETMOUSECLICKLOCK(void)
{
    Test_UserPref(SPI_GETMOUSECLICKLOCK, SPI_SETMOUSECLICKLOCK, UPM_CLICKLOCK);
}
