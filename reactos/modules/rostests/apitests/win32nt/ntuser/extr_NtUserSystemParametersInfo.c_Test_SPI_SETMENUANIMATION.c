
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwUserPrefMask ;
typedef int* PVOID ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_DESKTOP ;
 int NtUserSystemParametersInfo (int ,int ,int*,int ) ;
 scalar_t__ QueryUserRegValueW (int ,int ,int*,int*,int *) ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETMENUANIMATION ;
 int SPI_SETMENUANIMATION ;
 int TEST (int) ;
 int UPM_MENUANIMATION ;
 int VAL_PREFMASK ;

void
Test_SPI_SETMENUANIMATION(void)
{
    BOOL bOrig, bTemp = 0;
    DWORD dwUserPrefMask;
    DWORD cbSize;


    NtUserSystemParametersInfo(SPI_GETMENUANIMATION, 0, &bOrig, 0);


    NtUserSystemParametersInfo(SPI_SETMENUANIMATION, 0, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETMENUANIMATION, 0, &bTemp, 0);
    TEST(bTemp == 0);
    cbSize = sizeof(dwUserPrefMask);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefMask, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPrefMask & UPM_MENUANIMATION) == 0);


    NtUserSystemParametersInfo(SPI_SETMENUANIMATION, 0, (PVOID)1, SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETMENUANIMATION, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(dwUserPrefMask);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefMask, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPrefMask & UPM_MENUANIMATION) != 0);



    NtUserSystemParametersInfo(SPI_SETMENUANIMATION, 0, (PVOID)bOrig, SPIF_UPDATEINIFILE);
}
