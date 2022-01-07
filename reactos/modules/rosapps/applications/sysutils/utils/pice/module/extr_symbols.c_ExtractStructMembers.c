
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vr ;
struct TYPE_6__ {int type; int father_type; int size; int type_name; int file; int pSymbols; scalar_t__ address; scalar_t__ value; int name; void* bPtrType; void* bArrayType; } ;
typedef TYPE_1__ VRET ;
typedef int ULONG ;
typedef TYPE_1__* PVRET ;
typedef scalar_t__* PUSHORT ;
typedef scalar_t__* PULONG ;
typedef scalar_t__* PUCHAR ;
typedef char* LPSTR ;
typedef int LONG ;


 int DPRINT (int) ;
 int ExtractNumber (char*) ;
 char* ExtractTypeName (char*) ;
 int ExtractTypeNumber (char*) ;
 char* FindTypeDefinition (int ,int,int ) ;
 scalar_t__ IsAddressValid (int) ;
 scalar_t__ IsRangeValid (scalar_t__,int) ;
 int PICE_memset (TYPE_1__*,int ,int) ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcpy (int ,char*) ;
 int PICE_strncpy (char*,char*,int) ;
 int StrLenUpToWhiteChar (char*,char*) ;
 void* TRUE ;

PVRET ExtractStructMembers(PVRET pvr,LPSTR p)
{
    ULONG len;
    static char member_name[128];
    LONG bit_offset,bit_size,type_number,byte_size;
    static VRET vr;
    LPSTR pTypeDef,pEqual;

    DPRINT((1,"ExtractStructMembers(): %s\n",p));

    PICE_memset(&vr,0,sizeof(vr));


 len=StrLenUpToWhiteChar(p,":");
    if(len)
    {

     PICE_strncpy(member_name,p,len);
        member_name[len]=0;
        DPRINT((1,"ExtractStructMembers(): member_name = %s\n",member_name));


        p += (len+1);
        if(IsAddressValid((ULONG)p) )
        {
            type_number = ExtractTypeNumber(p);
            DPRINT((1,"ExtractStructMembers(): type_number = %x\n",type_number));

            vr.type = type_number;

            pEqual = PICE_strchr(p,')');

            if(pEqual)
            {
                p = pEqual+1;
                if(*p == '=')
                {
                    p++;
                    if(*p == 'a')
                    {
                        DPRINT((1,"ExtractStructMembers(): member is array\n"));
                        vr.bArrayType = TRUE;
                        p = PICE_strchr(p,';');
                        p = PICE_strchr(p,';');
                        p = PICE_strchr(p,';');
                        if(p)
                            p++;

                        type_number = ExtractTypeNumber(p);
                        vr.father_type = type_number;
                    }
                    else if(*p == '*')
                    {
                        DPRINT((1,"ExtractStructMembers(): member is ptr\n"));
                        vr.bPtrType = TRUE;
                        type_number = ExtractTypeNumber(p);
                        DPRINT((1,"ExtractStructMembers(): type_number = %x\n",type_number));
                        vr.father_type = type_number;
                    }
                    else if(*p == 'u')
                    {
                        DPRINT((1,"ExtractStructMembers(): member is union\n"));
                        while(*p!=';' && *(p+1)!=';' && *p!=0)p++;
                    }
                }
            }

            p = PICE_strchr(p,',');
            if(p)
            {
                p++;
                bit_offset = ExtractNumber(p);
                DPRINT((1,"ExtractStructMembers(): bit_offset = %x\n",bit_offset));
                p = PICE_strchr(p,',');
                if(p)
                {
                    p++;

                    bit_size = ExtractNumber(p);
                    DPRINT((1,"ExtractStructMembers(): bit_size = %x\n",bit_size));

                    vr.address = pvr->value + bit_offset/8;
                    vr.file = pvr->file;
                    vr.size = bit_size;
                    PICE_strcpy(vr.name,member_name);
                    byte_size = (bit_size+1)/8;
                    if(!byte_size)
                        byte_size = 4;
                    pvr->address = pvr->value;
                    if(IsRangeValid(vr.address,byte_size))
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

                    DPRINT((1,"ExtractStructMembers(): member %s type %x bit_offset %x bit_size%x\n",member_name,type_number,bit_offset,bit_size));

                    pTypeDef = FindTypeDefinition(pvr->pSymbols,type_number,pvr->file);
                    if(pTypeDef)
                    {
                        DPRINT((1,"ExtractStructMembers(): pTypedef= %s\n",pTypeDef));
                        PICE_strcpy(vr.type_name,ExtractTypeName(pTypeDef));
                        pTypeDef = PICE_strchr(pTypeDef,':');
                        if(pTypeDef)
                        {
                            pTypeDef++;
                            type_number = ExtractTypeNumber(pTypeDef);
                            DPRINT((1,"ExtractStructMembers(): type_number = %x\n",type_number));
                            vr.father_type = type_number;
                        }
                    }
                }
            }
        }
    }

    return &vr;
}
