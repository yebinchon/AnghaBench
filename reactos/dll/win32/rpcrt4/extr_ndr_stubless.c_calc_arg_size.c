
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_6__ {int MaxCount; } ;
typedef int SHORT ;
typedef int* PFORMAT_STRING ;
typedef TYPE_1__ MIDL_STUB_MESSAGE ;
typedef int DWORD ;
typedef int CHAR ;


 int ComplexStructSize (TYPE_1__*,int*) ;
 int* ComputeConformance (TYPE_1__*,int *,int*,int const) ;
 int* ComputeVariance (TYPE_1__*,int *,int*,int) ;
 int FC_SIMPLE_POINTER ;


 int FC_STRING_SIZED ;




 int FIXME (char*,...) ;
 int TRACE (char*,int) ;

__attribute__((used)) static DWORD calc_arg_size(MIDL_STUB_MESSAGE *pStubMsg, PFORMAT_STRING pFormat)
{
    DWORD size;
    switch(*pFormat)
    {
    case 134:
        if (pFormat[1] & FC_SIMPLE_POINTER)
        {
            size = 0;
            break;
        }
        size = calc_arg_size(pStubMsg, &pFormat[2] + *(const SHORT*)&pFormat[2]);
        break;
    case 131:
    case 135:
        size = *(const WORD*)(pFormat + 2);
        break;
    case 146:
        size = *(const WORD*)(pFormat + 2);
        if(*(const WORD*)(pFormat + 4))
            FIXME("Unhandled conformant description\n");
        break;
    case 145:
    case 143:
        size = *(const WORD*)(pFormat + 2);
        ComputeConformance(pStubMsg, ((void*)0), pFormat + 4, 0);
        size *= pStubMsg->MaxCount;
        break;
    case 133:
    case 132:
        size = *(const WORD*)(pFormat + 2);
        break;
    case 138:
    case 137:
        size = *(const DWORD*)(pFormat + 2);
        break;
    case 147:
        pFormat = ComputeConformance(pStubMsg, ((void*)0), pFormat + 4, *(const WORD*)&pFormat[2]);
        TRACE("conformance = %ld\n", pStubMsg->MaxCount);
        pFormat = ComputeVariance(pStubMsg, ((void*)0), pFormat, pStubMsg->MaxCount);
        size = ComplexStructSize(pStubMsg, pFormat);
        size *= pStubMsg->MaxCount;
        break;
    case 129:
        size = *(const WORD*)(pFormat + 4);
        break;
    case 144:
        size = *(const WORD*)(pFormat + 2);
        break;
    case 128:
        size = *(const WORD*)(pFormat + 2) * sizeof(WCHAR);
        break;
    case 142:
    case 141:
        if (*pFormat == 142)
            size = sizeof(CHAR);
        else
            size = sizeof(WCHAR);
        if (pFormat[1] == FC_STRING_SIZED)
            ComputeConformance(pStubMsg, ((void*)0), pFormat + 2, 0);
        else
            pStubMsg->MaxCount = 0;
        size *= pStubMsg->MaxCount;
        break;
    default:
        FIXME("Unhandled type %02x\n", *pFormat);

    case 130:
    case 136:
    case 140:
    case 139:
        size = sizeof(void *);
        break;
    }
    return size;
}
