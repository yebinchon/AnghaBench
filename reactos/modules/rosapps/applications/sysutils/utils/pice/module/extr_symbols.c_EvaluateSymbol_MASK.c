#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_8__ {size_t type; char* type_name; int error; void* value; void* address; int /*<<< orphan*/  size; int /*<<< orphan*/  name; int /*<<< orphan*/  bStructType; int /*<<< orphan*/  bPtrType; int /*<<< orphan*/  bArrayType; int /*<<< orphan*/  file; int /*<<< orphan*/  pSymbols; } ;
typedef  TYPE_1__* PVRET ;
typedef  void** PUSHORT ;
typedef  void** PULONG ;
typedef  void** PUCHAR ;
typedef  int* LPSTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 
 int FUNC3 (int*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int*) ; 
 int* FUNC5 (int*) ; 
 size_t FUNC6 (int*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC7 (int*,void**,size_t*,int /*<<< orphan*/ *) ; 
 int* FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int* FUNC11 (int*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t ulNumStructMembers ; 
 TYPE_1__* vrStructMembers ; 

BOOLEAN FUNC14(PVRET pvr,LPSTR pToken)
{
    LPSTR pTypeDef,pTypeName,pTypeBase,pSemiColon,pStructMembers;
    BOOLEAN bDone = FALSE;
    ULONG ulType,ulBits,ulBytes;
    LONG lLowerRange,lUpperRange,lDelta;
    static char type_def[2048];

    FUNC1(*(1,"EvaluateSymbol(%s)\n",pToken));

	if(FUNC7(pToken,&pvr->value,&pvr->type,&pvr->file))
    {
        FUNC1((1,"EvaluateSymbol(%s) pvr->value = %x pvr->type = %x\n",pToken,pvr->value,pvr->type));
        while(!bDone)
        {
            if(!(pTypeDef = FUNC8(pvr->pSymbols,pvr->type,pvr->file)))
                break;
            FUNC12(type_def,pTypeDef);

            pTypeDef = type_def;

            pTypeName = FUNC5(pTypeDef);

            FUNC1(*(1,"%s %s\n",pTypeName,pToken));

            FUNC12(pvr->type_name,pTypeName);

            pTypeBase = FUNC11(pTypeDef,'=');

            if(!pTypeBase)
                return FALSE;

            pTypeBase++;

            switch(*pTypeBase)
            {
                case '(': // type reference
                    ulType = FUNC6(pTypeBase);
                    FUNC1((1,"%x is a type reference to %x\n",pvr->type,ulType));
                    pvr->type = ulType;
                    break;
                case 'r': // subrange
                    pTypeBase++;
                    ulType = FUNC6(pTypeBase);
                    FUNC1((1,"%x is sub range of %x\n",pvr->type,ulType));
                    if(pvr->type == ulType)
                    {
                        FUNC1((1,"%x is a self reference\n",pvr->type));
                        pSemiColon = FUNC11(pTypeBase,';');
                        pSemiColon++;
                        lLowerRange = FUNC3(pSemiColon);
                        pSemiColon = FUNC11(pSemiColon,';');
                        pSemiColon++;
                        lUpperRange = FUNC3(pSemiColon);
                        lDelta = lUpperRange-lLowerRange;
                        FUNC1((1,"bounds %x-%x range %x\n",lLowerRange,lUpperRange,lDelta));
                        ulBits=0;
                        do
                        {
                            ulBits++;
                            lDelta /= 2;
                        }while(lDelta);
                        ulBytes = (ulBits+1)/8;
                        if(!ulBytes)
                            ulBytes = 4;
                        FUNC1((1,"# of bytes = %x\n",ulBytes));
                        pvr->address = pvr->value;
                        if(FUNC9(pvr->value,ulBytes))
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
                case 'a': // array type
                    FUNC1((1,"%x array\n",pvr->type));
                    pTypeBase++;
                    if(!FUNC2(pvr,pTypeBase))
                    {
                        bDone = TRUE;
                        pvr->error = 1;
                    }
                    break;
                case '*': // ptr type
                    FUNC1((1,"%x is ptr to\n",pvr->type));
                    bDone = TRUE; // meanwhile
                    break;
                case 's': // struct type [name:T(#,#)=s#membername1:(#,#),#,#;membername1:(#,#),#,#;;]
                    // go past 's'
                    pTypeBase++;

                    // extract the the struct size
                    lLowerRange = FUNC3(pTypeBase);
                    FUNC1((1,"%x struct size = %x\n",pvr->type,lLowerRange));

                    // skip over the digits
                    while(FUNC10(*pTypeBase))
                        pTypeBase++;

                    // the structs address is is value
                    pvr->address = pvr->value;
                    pvr->bStructType = TRUE;

                    // decode the struct members. pStructMembers now points to first member name
                    pStructMembers = pTypeBase;

                    while(pStructMembers && *pStructMembers && *pStructMembers!=';' && ulNumStructMembers<FUNC0(vrStructMembers))
                    {
                        FUNC1((1,"EvaluateSymbol(): member #%u\n",ulNumStructMembers));
                        // put this into our array
                        vrStructMembers[ulNumStructMembers] = *FUNC4(pvr,pStructMembers);

                        if(!FUNC13(vrStructMembers[ulNumStructMembers].type_name))
                        {
                            ULONG i;
                            PVRET pvrThis = &vrStructMembers[ulNumStructMembers];

                            FUNC1((1,"EvaluateSymbol(): no type name\n"));
                            for(i=0;i<ulNumStructMembers;i++)
                            {
                                FUNC1((1,"EvaluateSymbol(): vr[i].type_name = %s\n",vrStructMembers[i].type_name));
                                FUNC1((1,"EvaluateSymbol(): vr[i].name = %s\n",vrStructMembers[i].name));
                                FUNC1((1,"EvaluateSymbol(): vr[i].address = %.8X\n",vrStructMembers[i].address));
                                FUNC1((1,"EvaluateSymbol(): vr[i].value = %.8X\n",vrStructMembers[i].value));
                                FUNC1((1,"EvaluateSymbol(): vr[i].size = %.8X\n",vrStructMembers[i].size));
                                FUNC1((1,"EvaluateSymbol(): vr[i].type = %.8X\n",vrStructMembers[i].type));
                                if(pvrThis->type == vrStructMembers[i].type)
                                {
                                    FUNC12(pvrThis->type_name,vrStructMembers[i].type_name);
                                    pvrThis->bArrayType = vrStructMembers[i].bArrayType;
                                    pvrThis->bPtrType = vrStructMembers[i].bPtrType;
                                    pvrThis->bStructType = vrStructMembers[i].bStructType;
                                    break;
                                }
                            }
                        }

                        FUNC1((1,"EvaluateSymbol(): vr.type_name = %s\n",vrStructMembers[ulNumStructMembers].type_name));
                        FUNC1((1,"EvaluateSymbol(): vr.name = %s\n",vrStructMembers[ulNumStructMembers].name));
                        FUNC1((1,"EvaluateSymbol(): vr.address = %.8X\n",vrStructMembers[ulNumStructMembers].address));
                        FUNC1((1,"EvaluateSymbol(): vr.value = %.8X\n",vrStructMembers[ulNumStructMembers].value));
                        FUNC1((1,"EvaluateSymbol(): vr.size = %.8X\n",vrStructMembers[ulNumStructMembers].size));
                        FUNC1((1,"EvaluateSymbol(): vr.type = %.8X\n",vrStructMembers[ulNumStructMembers].type));

                        ulNumStructMembers++;

                        // skip to next ':'
                        pStructMembers = FUNC11(pStructMembers,';');
                        pStructMembers = FUNC11(pStructMembers,':');
                        if(pStructMembers)
                        {
                            FUNC1(*(1,"EvaluateSymbol(): ptr is now %s\n",pStructMembers));
                            // go back to where member name starts
                            while(*pStructMembers!=';')
                                pStructMembers--;
                            // if ';' present, go to next char
                            if(pStructMembers)
                                pStructMembers++;
                        }
                    }

                    bDone = TRUE; // meanwhile
                    break;
                case 'u': // union type
                    FUNC1((1,"%x union\n",pvr->type));
                    bDone = TRUE; // meanwhile
                    break;
                case 'e': // enum type
                    FUNC1((1,"%x enum\n",pvr->type));
                    bDone = TRUE; // meanwhile
                    break;
                default:
                    FUNC1((1,"DEFAULT %x, base: %c\n",pvr->type, *pTypeBase));
		    pvr->address = pvr->value;
		    if(FUNC9(pvr->value,ulBytes))
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