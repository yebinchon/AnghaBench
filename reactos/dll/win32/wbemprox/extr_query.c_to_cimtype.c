
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int CIMTYPE ;


 int CIM_BOOLEAN ;
 int CIM_SINT16 ;
 int CIM_SINT32 ;
 int CIM_SINT64 ;
 int CIM_SINT8 ;
 int CIM_STRING ;
 int CIM_UINT16 ;
 int CIM_UINT32 ;
 int CIM_UINT64 ;
 int CIM_UINT8 ;
 int ERR (char*,int) ;
__attribute__((used)) static CIMTYPE to_cimtype( VARTYPE type )
{
    switch (type)
    {
    case 137: return CIM_BOOLEAN;
    case 136: return CIM_STRING;
    case 135: return CIM_SINT8;
    case 131: return CIM_UINT8;
    case 134: return CIM_SINT16;
    case 130: return CIM_UINT16;
    case 133: return CIM_SINT32;
    case 129: return CIM_UINT32;
    case 132: return CIM_SINT64;
    case 128: return CIM_UINT64;
    default:
        ERR("unhandled type %u\n", type);
        break;
    }
    return 0;
}
