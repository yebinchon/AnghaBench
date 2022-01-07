
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LONGLONG ;
typedef int INT8 ;
typedef int INT64 ;
typedef int INT32 ;
typedef int INT16 ;
typedef int CIMTYPE ;




 int CIM_FLAG_ARRAY ;
 int ERR (char*,int) ;

UINT get_type_size( CIMTYPE type )
{
    if (type & CIM_FLAG_ARRAY) return sizeof(void *);

    switch (type)
    {
    case 138:
        return sizeof(int);
    case 133:
    case 128:
        return sizeof(INT8);
    case 136:
    case 131:
        return sizeof(INT16);
    case 135:
    case 130:
        return sizeof(INT32);
    case 134:
    case 129:
        return sizeof(INT64);
    case 137:
    case 132:
        return sizeof(WCHAR *);
    default:
        ERR("unhandled type %u\n", type);
        break;
    }
    return sizeof(LONGLONG);
}
