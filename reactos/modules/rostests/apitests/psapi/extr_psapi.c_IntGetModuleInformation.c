
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Path; void* Len; int ImageBase; } ;
typedef TYPE_1__ TEST_MODULE_INFO ;
typedef char* LPCSTR ;
typedef char CHAR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int GetSystemWindowsDirectory (char*,int) ;
 int IntGetImageBase (char*) ;
 scalar_t__ TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*) ;
 int strcat (char*,char*) ;
 int strcpy (int ,char*) ;
 void* strlen (int ) ;

__attribute__((used)) static BOOLEAN IntGetModuleInformation(LPCSTR Module, BOOLEAN IsDriver, BOOLEAN IsProcMod, BOOLEAN BaseName, TEST_MODULE_INFO * Info)
{
    CHAR System[255];
    UINT Len;

    memset(Info, 0, sizeof(TEST_MODULE_INFO));


    Len = GetSystemWindowsDirectory(System, 255);
    if (Len > 255 || Len == 0)
    {
        printf("GetSystemWindowsDirectory failed\n");
        return FALSE;
    }


    strcat(System, "\\system32\\");
    if (IsDriver) strcat(System, "drivers\\");
    strcat(System, Module);


    if (IsProcMod)
    {
        Info->ImageBase = IntGetImageBase(System);
        if (!Info->ImageBase)
        {
            printf("IntGetImageBase failed\n");
            return FALSE;
        }
    }
    else
    {

        printf("Not supported yet!\n");
        return FALSE;
    }

    if (BaseName)
    {
        strcpy(Info->Path, Module);
        Info->Len = strlen(Info->Path);
    }
    else
    {

        strcpy(Info->Path, System + 2);
        Info->Len = strlen(Info->Path);
    }

    return TRUE;
}
