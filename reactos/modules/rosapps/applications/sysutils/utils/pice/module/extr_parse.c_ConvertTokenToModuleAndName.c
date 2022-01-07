
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__* PULONG ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int FALSE ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcpy (char*,char*) ;
 int TRUE ;

BOOLEAN ConvertTokenToModuleAndName(LPSTR pToken,PULONG pulModuleName,PULONG pulFunctionName)
{
    LPSTR pEx;
    char temp[64];
    LPSTR p;
    static char module_name[128];
    static char function_name[128];


    PICE_strcpy(temp,pToken);
    p = temp;

    DPRINT((0,"ConvertTokenToModuleAndName(%s)\n",p));

    pEx = PICE_strchr(p,'!');
    if(pEx)
    {
        DPRINT((0,"ConvertTokenToModuleAndName(): module!symbol syntax detected\n"));

        *pEx = 0;

        pEx++;
        DPRINT((0,"ConvertTokenToModuleAndName(): module = %s symbol = %s\n",p,pEx));
        PICE_strcpy(module_name,p);
        PICE_strcpy(function_name,pEx);
        *pulModuleName = (ULONG)module_name;
        *pulFunctionName = (ULONG)function_name;
        return TRUE;

    }
    return FALSE;
}
