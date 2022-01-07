
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SHORT ;
typedef int PMIDL_STUB_MESSAGE ;
typedef int* PFORMAT_STRING ;
typedef int INT_PTR ;


 int EmbeddedComplexSize (int ,int*) ;







 int FC_END ;
 int FIXME (char*,int) ;
 int align_length (int*,int) ;

ULONG ComplexStructSize(PMIDL_STUB_MESSAGE pStubMsg, PFORMAT_STRING pFormat)
{
  PFORMAT_STRING desc;
  ULONG size = 0;

  while (*pFormat != FC_END) {
    switch (*pFormat) {
    case 157:
    case 156:
    case 141:
    case 129:
      size += 1;
      break;
    case 128:
    case 142:
    case 130:
      size += 2;
      break;
    case 147:
    case 132:
    case 153:
    case 152:
    case 151:
      size += 4;
      break;
    case 148:
    case 133:
      size += sizeof(INT_PTR);
      break;
    case 149:
    case 155:
      size += 8;
      break;
    case 143:
    case 131:
    case 146:
    case 150:
    case 144:
      size += sizeof(void *);
      if (*pFormat != 144)
        pFormat += 4;
      break;
    case 160:
      align_length(&size, 2);
      break;
    case 159:
      align_length(&size, 4);
      break;
    case 158:
      align_length(&size, 8);
      break;
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
      size += *pFormat - 140 + 1;
      break;
    case 154:
      size += pFormat[1];
      pFormat += 2;
      desc = pFormat + *(const SHORT*)pFormat;
      size += EmbeddedComplexSize(pStubMsg, desc);
      pFormat += 2;
      continue;
    case 145:
      break;
    default:
      FIXME("unhandled format 0x%02x\n", *pFormat);
    }
    pFormat++;
  }

  return size;
}
