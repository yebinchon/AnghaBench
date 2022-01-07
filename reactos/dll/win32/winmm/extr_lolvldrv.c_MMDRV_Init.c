
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_buffer ;
typedef int LPVOID ;
typedef int INT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_CURRENT_USER ;
 scalar_t__ LoadRegistryMMEDrivers (int ) ;
 int MMDRV_Install (char*,char*,int ) ;
 int NT_MME_DRIVERS32_KEY ;
 int NT_MME_DRIVERS_KEY ;
 int RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,int*,int ,int*) ;
 int TRACE (char*) ;
 int TRUE ;
 char* WINE_DEFAULT_WINMM_DRIVER ;
 char* WINE_DEFAULT_WINMM_MAPPER ;
 char* WINE_DEFAULT_WINMM_MIDI ;
 int sprintf (char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

BOOL MMDRV_Init(void)
{
    INT driver_count = 0;

    driver_count += LoadRegistryMMEDrivers(NT_MME_DRIVERS_KEY);
    driver_count += LoadRegistryMMEDrivers(NT_MME_DRIVERS32_KEY);


    return TRUE;


}
