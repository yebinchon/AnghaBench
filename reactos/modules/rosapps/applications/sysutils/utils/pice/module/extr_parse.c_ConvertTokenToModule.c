
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {int name; } ;
typedef size_t* PULONG ;
typedef int LPSTR ;
typedef int BOOLEAN ;


 int CopyWideToAnsi (char*,int ) ;
 int DEBUG_MODULE_NAME_LEN ;
 size_t DIM (TYPE_1__**) ;
 int FALSE ;
 scalar_t__ PICE_strcmpi (int ,char*) ;
 int PICE_strlen (int ) ;
 scalar_t__ PICE_strncmpi (char*,int ,int ) ;
 int TRUE ;
 TYPE_1__** apSymbols ;

BOOLEAN ConvertTokenToModule(LPSTR p,PULONG pValue)
{
    ULONG i;
 char temp[DEBUG_MODULE_NAME_LEN];

    for(i=0;i<DIM(apSymbols);i++)
    {
        if(apSymbols[i])
        {
   CopyWideToAnsi(temp,apSymbols[i]->name);
            if(PICE_strcmpi(p,temp)==0)
            {
                *pValue = (ULONG)apSymbols[i];
                return TRUE;
            }
        }
    }

    for(i=0;i<DIM(apSymbols);i++)
    {
        if(apSymbols[i])
        {
   CopyWideToAnsi(temp,apSymbols[i]->name);
            if(PICE_strncmpi(temp,p,PICE_strlen(p))==0)
            {
                *pValue = (ULONG)apSymbols[i];
                return TRUE;
            }
        }
    }

 return FALSE;
}
