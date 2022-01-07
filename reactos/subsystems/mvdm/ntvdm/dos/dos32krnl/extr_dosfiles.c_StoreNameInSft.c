
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int * FileName; } ;
typedef int ShortPath ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef int * PCHAR ;
typedef int LPCSTR ;
typedef int CHAR ;


 int GetShortPathNameA (int ,int *,int) ;
 int MAX_PATH ;
 int RtlCopyMemory (int *,int *,int ) ;
 int _strupr (int *) ;
 int min (int ,int) ;
 int * strchr (int *,char) ;
 int strlen (int *) ;
 int strncpy (int *,int ,int) ;
 int * strrchr (int *,char) ;

__attribute__((used)) static VOID StoreNameInSft(LPCSTR FilePath, PDOS_FILE_DESCRIPTOR Descriptor)
{
    CHAR ShortPath[MAX_PATH];
    PCHAR Name;
    PCHAR Extension;


    if (!GetShortPathNameA(FilePath, ShortPath, sizeof(ShortPath)))
    {

        strncpy(ShortPath, FilePath, sizeof(ShortPath) - 1);
        _strupr(ShortPath);
    }


    Name = strrchr(ShortPath, '\\');
    if (Name == ((void*)0)) Name = ShortPath;


    Extension = strchr(Name, '.');

    if (Extension)
    {

        *Extension++ = 0;
    }


    RtlCopyMemory(Descriptor->FileName, Name, min(strlen(Name), 8));

    if (Extension)
    {

        RtlCopyMemory(&Descriptor->FileName[8], Extension, min(strlen(Extension), 3));
    }
}
