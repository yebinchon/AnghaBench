
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPI_GETKEYBOARDCUES ;
 int SPI_SETKEYBOARDCUES ;
 int Test_UserPref (int ,int ,int ) ;
 int UPM_KEYBOARDCUES ;

void
Test_SPI_SETKEYBOARDCUES(void)
{
    Test_UserPref(SPI_GETKEYBOARDCUES, SPI_SETKEYBOARDCUES, UPM_KEYBOARDCUES);
}
