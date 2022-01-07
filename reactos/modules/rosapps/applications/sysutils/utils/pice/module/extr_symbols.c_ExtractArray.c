
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int type; int type_name; int file; int pSymbols; int bArrayType; } ;
typedef TYPE_1__* PVRET ;
typedef scalar_t__ LPSTR ;
typedef int BOOLEAN ;


 int DPRINT (int) ;
 int ExtractNumber (scalar_t__) ;
 int ExtractTypeName (scalar_t__) ;
 int ExtractTypeNumber (scalar_t__) ;
 int FALSE ;
 scalar_t__ FindTypeDefinition (int ,int ,int ) ;
 scalar_t__ PICE_strchr (scalar_t__,char) ;
 int PICE_strcpy (int ,int ) ;
 int TRUE ;

BOOLEAN ExtractArray(PVRET pvr,LPSTR p)
{
    ULONG index_typenumber,type_number;
    ULONG lower_bound,upper_bound;
    LPSTR pTypeDef;

    DPRINT((1,"ExtractArray(%s)\n",p));


    pvr->bArrayType = TRUE;
    p++;
    index_typenumber = ExtractTypeNumber(p);
    p = PICE_strchr(p,';');
    if(p)
    {
        p++;
        lower_bound = ExtractNumber(p);
        p = PICE_strchr(p,';');
        if(p)
        {
            p++;

            upper_bound = ExtractNumber(p);
            p = PICE_strchr(p,';');
            if(p)
            {
                p++;

                type_number = ExtractTypeNumber(p);

                DPRINT((1,"ExtractArray(): %x %x %x %x\n",index_typenumber,lower_bound,upper_bound,type_number));

                pTypeDef = FindTypeDefinition(pvr->pSymbols,type_number,pvr->file);
                if(pTypeDef)
                {
                    PICE_strcpy(pvr->type_name,ExtractTypeName(pTypeDef));
                    pvr->type = type_number;
                    return TRUE;
                }
            }
        }
    }
    return FALSE;
}
