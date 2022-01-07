
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PULONG ;
typedef scalar_t__ PDEBUG_MODULE ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int FALSE ;
 int FindFunctionInModuleByName (char*,scalar_t__) ;
 scalar_t__ IsModuleLoaded (char*) ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcpy (char*,char*) ;
 int ScanExports (char*,int *) ;
 int TRUE ;
 scalar_t__ pCurrentMod ;

BOOLEAN ConvertTokenToSymbol(LPSTR pToken,PULONG pValue)
{
    LPSTR pEx;
    char temp[64];
    LPSTR p;
 PDEBUG_MODULE pModFound;

    DPRINT((0,"ConvertTokenToSymbol()\n"));

    PICE_strcpy(temp,pToken);
    p = temp;


    pEx = PICE_strchr(p,'!');
    if(pEx)
    {
        DPRINT((0,"ConvertTokenToSymbol(): module!symbol syntax detected\n"));

        *pEx = 0;

        pEx++;
        DPRINT((0,"ConvertTokenToSymbol(): module = %s symbol = %s\n",p,pEx));

  if( pModFound=IsModuleLoaded(p) )
        {
            if((*pValue = FindFunctionInModuleByName(pEx,pModFound)))
                return TRUE;
        }
    }
    else
    {
        if(pCurrentMod)
        {
            if((*pValue = FindFunctionInModuleByName(p,pCurrentMod)))
                return TRUE;
        }
     return ScanExports(p,pValue);
    }
    return FALSE;
}
