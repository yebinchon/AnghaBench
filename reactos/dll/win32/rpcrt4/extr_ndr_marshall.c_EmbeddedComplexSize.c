
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
typedef int USHORT ;
typedef int ULONGLONG ;
typedef int const ULONG ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_2__ {int flags_type; } ;
typedef int SHORT ;
typedef int* PFORMAT_STRING ;
typedef TYPE_1__ NDR_RANGE ;
typedef int MIDL_STUB_MESSAGE ;


 int ERR (char*,int) ;
 int FIXME (char*,int) ;
 int RPC_X_BAD_STUB_DATA ;
 int RpcRaiseException (int ) ;
 int* SkipConformance (int *,int*) ;

__attribute__((used)) static ULONG EmbeddedComplexSize(MIDL_STUB_MESSAGE *pStubMsg,
                                 PFORMAT_STRING pFormat)
{
  switch (*pFormat) {
  case 134:
  case 140:
  case 151:
  case 155:
  case 136:
  case 135:
  case 152:
    return *(const WORD*)&pFormat[2];
  case 144:
  case 143:
    return *(const ULONG*)&pFormat[2];
  case 132:
    return *(const WORD*)&pFormat[4];
  case 139: {
    switch (((const NDR_RANGE *)pFormat)->flags_type & 0xf) {
    case 154:
    case 153:
    case 137:
    case 130:
        return sizeof(UCHAR);
    case 129:
    case 138:
    case 131:
        return sizeof(USHORT);
    case 142:
    case 133:
    case 148:
        return sizeof(ULONG);
    case 147:
        return sizeof(float);
    case 150:
        return sizeof(double);
    case 146:
        return sizeof(ULONGLONG);
    case 149:
        return sizeof(UINT);
    default:
        ERR("unknown type 0x%x\n", ((const NDR_RANGE *)pFormat)->flags_type & 0xf);
        RpcRaiseException(RPC_X_BAD_STUB_DATA);
    }
  }
  case 141:
    pFormat += 2;
    pFormat = SkipConformance(pStubMsg, pFormat);
    pFormat += *(const SHORT*)pFormat;
    return *(const SHORT*)pFormat;
  case 145:
    return sizeof(void *);
  case 128:
    return *(const WORD*)&pFormat[2] * 2;
  default:
    FIXME("unhandled embedded type %02x\n", *pFormat);
  }
  return 0;
}
