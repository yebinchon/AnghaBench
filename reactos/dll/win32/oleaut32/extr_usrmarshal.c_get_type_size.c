
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int VARIANT_BOOL ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int SHORT ;
typedef int SCODE ;
typedef int LONGLONG ;
typedef int LONG ;
typedef int INT ;
typedef int FLOAT ;
typedef int DOUBLE ;
typedef int DECIMAL ;
typedef int DATE ;
typedef int CY ;
typedef int CHAR ;


 int FIXME (char*,int) ;
 int VT_ARRAY ;


 int VT_BYREF ;
unsigned int get_type_size(ULONG *pFlags, VARTYPE vt)
{
    if (vt & VT_ARRAY) return 4;

    switch (vt & ~VT_BYREF) {
    case 146:
    case 138:
        return 0;
    case 143:
    case 134:
        return sizeof(CHAR);
    case 142:
    case 133:
        return sizeof(SHORT);
    case 141:
    case 132:
    case 144:
        return sizeof(LONG);
    case 139:
    case 130:
        return sizeof(INT);
    case 140:
    case 131:
        return sizeof(LONGLONG);
    case 137:
        return sizeof(FLOAT);
    case 136:
        return sizeof(DOUBLE);
    case 152:
        return sizeof(VARIANT_BOOL);
    case 145:
        return sizeof(SCODE);
    case 149:
        return sizeof(DATE);
    case 150:
        return sizeof(CY);
    case 148:
        return sizeof(DECIMAL);
    case 151:
        return sizeof(ULONG);
    case 128:
        return sizeof(VARIANT);
    case 129:
    case 147:
    case 135:
        return 0;
    default:
        FIXME("unhandled VT %d\n", vt);
        return 0;
    }
}
