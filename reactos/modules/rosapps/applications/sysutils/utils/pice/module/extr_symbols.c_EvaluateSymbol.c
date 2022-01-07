
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_8__ {size_t type; char* type_name; int error; void* value; void* address; int size; int name; int bStructType; int bPtrType; int bArrayType; int file; int pSymbols; } ;
typedef TYPE_1__* PVRET ;
typedef void** PUSHORT ;
typedef void** PULONG ;
typedef void** PUCHAR ;
typedef int* LPSTR ;
typedef int LONG ;
typedef int BOOLEAN ;


 size_t DIM (TYPE_1__*) ;
 int DPRINT (int) ;
 int ExtractArray (TYPE_1__*,int*) ;
 int ExtractNumber (int*) ;
 TYPE_1__* ExtractStructMembers (TYPE_1__*,int*) ;
 int* ExtractTypeName (int*) ;
 size_t ExtractTypeNumber (int*) ;
 int FALSE ;
 scalar_t__ FindGlobalStabSymbol (int*,void**,size_t*,int *) ;
 int* FindTypeDefinition (int ,size_t,int ) ;
 int IsRangeValid (void*,size_t) ;
 int PICE_isdigit (int) ;
 int* PICE_strchr (int*,char) ;
 int PICE_strcpy (char*,int*) ;
 int PICE_strlen (char*) ;
 int TRUE ;
 size_t ulNumStructMembers ;
 TYPE_1__* vrStructMembers ;

BOOLEAN EvaluateSymbol(PVRET pvr,LPSTR pToken)
{
    LPSTR pTypeDef,pTypeName,pTypeBase,pSemiColon,pStructMembers;
    BOOLEAN bDone = FALSE;
    ULONG ulType,ulBits,ulBytes;
    LONG lLowerRange,lUpperRange,lDelta;
    static char type_def[2048];

    DPRINT((1,"EvaluateSymbol(%s)\n",pToken));

 if(FindGlobalStabSymbol(pToken,&pvr->value,&pvr->type,&pvr->file))
    {
        DPRINT((1,"EvaluateSymbol(%s) pvr->value = %x pvr->type = %x\n",pToken,pvr->value,pvr->type));
        while(!bDone)
        {
            if(!(pTypeDef = FindTypeDefinition(pvr->pSymbols,pvr->type,pvr->file)))
                break;
            PICE_strcpy(type_def,pTypeDef);

            pTypeDef = type_def;

            pTypeName = ExtractTypeName(pTypeDef);

            DPRINT((1,"%s %s\n",pTypeName,pToken));

            PICE_strcpy(pvr->type_name,pTypeName);

            pTypeBase = PICE_strchr(pTypeDef,'=');

            if(!pTypeBase)
                return FALSE;

            pTypeBase++;

            switch(*pTypeBase)
            {
                case '(':
                    ulType = ExtractTypeNumber(pTypeBase);
                    DPRINT((1,"%x is a type reference to %x\n",pvr->type,ulType));
                    pvr->type = ulType;
                    break;
                case 'r':
                    pTypeBase++;
                    ulType = ExtractTypeNumber(pTypeBase);
                    DPRINT((1,"%x is sub range of %x\n",pvr->type,ulType));
                    if(pvr->type == ulType)
                    {
                        DPRINT((1,"%x is a self reference\n",pvr->type));
                        pSemiColon = PICE_strchr(pTypeBase,';');
                        pSemiColon++;
                        lLowerRange = ExtractNumber(pSemiColon);
                        pSemiColon = PICE_strchr(pSemiColon,';');
                        pSemiColon++;
                        lUpperRange = ExtractNumber(pSemiColon);
                        lDelta = lUpperRange-lLowerRange;
                        DPRINT((1,"bounds %x-%x range %x\n",lLowerRange,lUpperRange,lDelta));
                        ulBits=0;
                        do
                        {
                            ulBits++;
                            lDelta /= 2;
                        }while(lDelta);
                        ulBytes = (ulBits+1)/8;
                        if(!ulBytes)
                            ulBytes = 4;
                        DPRINT((1,"# of bytes = %x\n",ulBytes));
                        pvr->address = pvr->value;
                        if(IsRangeValid(pvr->value,ulBytes))
                        {
                            switch(ulBytes)
                            {
                                case 1:
                                    pvr->value = *(PUCHAR)pvr->value;
                                    break;
                                case 2:
                                    pvr->value = *(PUSHORT)pvr->value;
                                    break;
                                case 4:
                                    pvr->value = *(PULONG)pvr->value;
                                    break;
                            }
                        }
                        bDone=TRUE;
                    }
                    else
                        pvr->type = ulType;
                    break;
                case 'a':
                    DPRINT((1,"%x array\n",pvr->type));
                    pTypeBase++;
                    if(!ExtractArray(pvr,pTypeBase))
                    {
                        bDone = TRUE;
                        pvr->error = 1;
                    }
                    break;
                case '*':
                    DPRINT((1,"%x is ptr to\n",pvr->type));
                    bDone = TRUE;
                    break;
                case 's':

                    pTypeBase++;


                    lLowerRange = ExtractNumber(pTypeBase);
                    DPRINT((1,"%x struct size = %x\n",pvr->type,lLowerRange));


                    while(PICE_isdigit(*pTypeBase))
                        pTypeBase++;


                    pvr->address = pvr->value;
                    pvr->bStructType = TRUE;


                    pStructMembers = pTypeBase;

                    while(pStructMembers && *pStructMembers && *pStructMembers!=';' && ulNumStructMembers<DIM(vrStructMembers))
                    {
                        DPRINT((1,"EvaluateSymbol(): member #%u\n",ulNumStructMembers));

                        vrStructMembers[ulNumStructMembers] = *ExtractStructMembers(pvr,pStructMembers);

                        if(!PICE_strlen(vrStructMembers[ulNumStructMembers].type_name))
                        {
                            ULONG i;
                            PVRET pvrThis = &vrStructMembers[ulNumStructMembers];

                            DPRINT((1,"EvaluateSymbol(): no type name\n"));
                            for(i=0;i<ulNumStructMembers;i++)
                            {
                                DPRINT((1,"EvaluateSymbol(): vr[i].type_name = %s\n",vrStructMembers[i].type_name));
                                DPRINT((1,"EvaluateSymbol(): vr[i].name = %s\n",vrStructMembers[i].name));
                                DPRINT((1,"EvaluateSymbol(): vr[i].address = %.8X\n",vrStructMembers[i].address));
                                DPRINT((1,"EvaluateSymbol(): vr[i].value = %.8X\n",vrStructMembers[i].value));
                                DPRINT((1,"EvaluateSymbol(): vr[i].size = %.8X\n",vrStructMembers[i].size));
                                DPRINT((1,"EvaluateSymbol(): vr[i].type = %.8X\n",vrStructMembers[i].type));
                                if(pvrThis->type == vrStructMembers[i].type)
                                {
                                    PICE_strcpy(pvrThis->type_name,vrStructMembers[i].type_name);
                                    pvrThis->bArrayType = vrStructMembers[i].bArrayType;
                                    pvrThis->bPtrType = vrStructMembers[i].bPtrType;
                                    pvrThis->bStructType = vrStructMembers[i].bStructType;
                                    break;
                                }
                            }
                        }

                        DPRINT((1,"EvaluateSymbol(): vr.type_name = %s\n",vrStructMembers[ulNumStructMembers].type_name));
                        DPRINT((1,"EvaluateSymbol(): vr.name = %s\n",vrStructMembers[ulNumStructMembers].name));
                        DPRINT((1,"EvaluateSymbol(): vr.address = %.8X\n",vrStructMembers[ulNumStructMembers].address));
                        DPRINT((1,"EvaluateSymbol(): vr.value = %.8X\n",vrStructMembers[ulNumStructMembers].value));
                        DPRINT((1,"EvaluateSymbol(): vr.size = %.8X\n",vrStructMembers[ulNumStructMembers].size));
                        DPRINT((1,"EvaluateSymbol(): vr.type = %.8X\n",vrStructMembers[ulNumStructMembers].type));

                        ulNumStructMembers++;


                        pStructMembers = PICE_strchr(pStructMembers,';');
                        pStructMembers = PICE_strchr(pStructMembers,':');
                        if(pStructMembers)
                        {
                            DPRINT((1,"EvaluateSymbol(): ptr is now %s\n",pStructMembers));

                            while(*pStructMembers!=';')
                                pStructMembers--;

                            if(pStructMembers)
                                pStructMembers++;
                        }
                    }

                    bDone = TRUE;
                    break;
                case 'u':
                    DPRINT((1,"%x union\n",pvr->type));
                    bDone = TRUE;
                    break;
                case 'e':
                    DPRINT((1,"%x enum\n",pvr->type));
                    bDone = TRUE;
                    break;
                default:
                    DPRINT((1,"DEFAULT %x, base: %c\n",pvr->type, *pTypeBase));
      pvr->address = pvr->value;
      if(IsRangeValid(pvr->value,ulBytes))
        {
   switch(ulBytes)
     {
     case 1:
       pvr->value = *(PUCHAR)pvr->value;
       break;
     case 2:
       pvr->value = *(PUSHORT)pvr->value;
       break;
     case 4:
       pvr->value = *(PULONG)pvr->value;
       break;
     }
        }
                    bDone = TRUE;
                    break;
            }

        }
        return TRUE;
 }
    return FALSE;
}
