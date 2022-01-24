#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vr ;
struct TYPE_6__ {int type; int father_type; int size; int /*<<< orphan*/  type_name; int /*<<< orphan*/  file; int /*<<< orphan*/  pSymbols; scalar_t__ address; scalar_t__ value; int /*<<< orphan*/  name; void* bPtrType; void* bArrayType; } ;
typedef  TYPE_1__ VRET ;
typedef  int ULONG ;
typedef  TYPE_1__* PVRET ;
typedef  scalar_t__* PUSHORT ;
typedef  scalar_t__* PULONG ;
typedef  scalar_t__* PUCHAR ;
typedef  char* LPSTR ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*,char*) ; 
 void* TRUE ; 

PVRET FUNC12(PVRET pvr,LPSTR p)
{
    ULONG len;
    static char member_name[128];
    LONG bit_offset,bit_size,type_number,byte_size;
    static VRET vr;
    LPSTR pTypeDef,pEqual;

    FUNC0((1,"ExtractStructMembers(): %s\n",p));

    FUNC7(&vr,0,sizeof(vr));

    // name:type-number,bit-offset,bit-size
	len=FUNC11(p,":");
    if(len)
    {
        // extract member name
	    FUNC10(member_name,p,len);
        member_name[len]=0;
        FUNC0((1,"ExtractStructMembers(): member_name = %s\n",member_name));

        // go to char following ':'
        p += (len+1);
        if(FUNC5((ULONG)p) )
        {
            type_number = FUNC3(p);
            FUNC0((1,"ExtractStructMembers(): type_number = %x\n",type_number));

            vr.type = type_number;

            pEqual = FUNC8(p,')');
            // see if it includes type def
            if(pEqual)
            {
                p = pEqual+1;
                if(*p == '=')
                {
                    p++;
                    if(*p == 'a')
                    {
                        FUNC0((1,"ExtractStructMembers(): member is array\n"));
                        vr.bArrayType = TRUE;
                        p = FUNC8(p,';');
                        p = FUNC8(p,';');
                        p = FUNC8(p,';');
                        if(p)
                            p++;

                        type_number = FUNC3(p);
                        vr.father_type = type_number;
                    }
                    else if(*p == '*')
                    {
                        FUNC0((1,"ExtractStructMembers(): member is ptr\n"));
                        vr.bPtrType = TRUE;
                        type_number = FUNC3(p);
                        FUNC0((1,"ExtractStructMembers(): type_number = %x\n",type_number));
                        vr.father_type = type_number;
                    }
                    else if(*p == 'u')
                    {
                        FUNC0((1,"ExtractStructMembers(): member is union\n"));
                        while(*p!=';' && *(p+1)!=';' && *p!=0)p++;
                    }
                }
            }

            p = FUNC8(p,',');
            if(p)
            {
                p++;
                bit_offset = FUNC1(p);
                FUNC0((1,"ExtractStructMembers(): bit_offset = %x\n",bit_offset));
                p = FUNC8(p,',');
                if(p)
                {
                    p++;

                    bit_size = FUNC1(p);
                    FUNC0((1,"ExtractStructMembers(): bit_size = %x\n",bit_size));

                    vr.address = pvr->value + bit_offset/8;
                    vr.file = pvr->file;
                    vr.size = bit_size;
                    FUNC9(vr.name,member_name);
                    byte_size = (bit_size+1)/8;
                    if(!byte_size)
                        byte_size = 4;
                    pvr->address = pvr->value;
                    if(FUNC6(vr.address,byte_size))
                    {
                        switch(byte_size)
                        {
                            case 1:
                                vr.value = *(PUCHAR)vr.address;
                                break;
                            case 2:
                                vr.value = *(PUSHORT)vr.address;
                                break;
                            case 4:
                                vr.value = *(PULONG)vr.address;
                                break;
                        }
                    }

                    FUNC0((1,"ExtractStructMembers(): member %s type %x bit_offset %x bit_size%x\n",member_name,type_number,bit_offset,bit_size));

                    pTypeDef = FUNC4(pvr->pSymbols,type_number,pvr->file);
                    if(pTypeDef)
                    {
                        FUNC0((1,"ExtractStructMembers(): pTypedef= %s\n",pTypeDef));
                        FUNC9(vr.type_name,FUNC2(pTypeDef));
                        pTypeDef = FUNC8(pTypeDef,':');
                        if(pTypeDef)
                        {
                            pTypeDef++;
                            type_number = FUNC3(pTypeDef);
                            FUNC0((1,"ExtractStructMembers(): type_number = %x\n",type_number));
                            vr.father_type = type_number;
                        }
                    }
                }
            }
        }
    }

    return &vr;
}