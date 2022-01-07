
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t ULONG ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef int LPSTR ;


 int CP_ACP ;
 int DEBUG_MODULE_NAME_LEN ;
 int DPRINT (int ) ;
 int PICE_MultiByteToWideChar (int ,int *,int ,int,int *,int) ;
 scalar_t__ PICE_wcsicmp (int *,int ) ;
 TYPE_1__** apSymbols ;
 size_t ulNumSymbolsLoaded ;

PICE_SYMBOLFILE_HEADER* FindModuleSymbolsByModuleName(LPSTR modname)
{
    ULONG i;
 WCHAR tempstr[DEBUG_MODULE_NAME_LEN];

    DPRINT((0,"FindModuleSymbols()\n"));
 if( !PICE_MultiByteToWideChar(CP_ACP, ((void*)0), modname, -1, tempstr, DEBUG_MODULE_NAME_LEN ) )
 {
  DPRINT((0,"Can't convert module name in FindModuleSymbols.\n"));
  return ((void*)0);
 }

    for(i=0;i<ulNumSymbolsLoaded;i++)
    {
        if(PICE_wcsicmp(tempstr,apSymbols[i]->name) == 0)
            return apSymbols[i];
    }

    return ((void*)0);
}
