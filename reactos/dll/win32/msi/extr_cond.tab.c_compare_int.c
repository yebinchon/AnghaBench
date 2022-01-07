
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
 int ERR (char*) ;

__attribute__((used)) static INT compare_int( INT a, INT operator, INT b )
{
    switch (operator)
    {
    case 131:
    case 136:
        return a < b;
    case 141:
    case 138:
        return a > b;
    case 143:
    case 140:
        return a == b;
    case 130:
    case 135:
        return a != b;
    case 142:
    case 139:
        return a >= b;
    case 133:
    case 137:
        return a <= b;
    case 128:
    case 134:
        return ( a & b ) ? 1 : 0;
    case 129:
        return ( ( a & 0xffff ) == b ) ? 1 : 0;
    case 132:
        return ( ( (a>>16) & 0xffff ) == b ) ? 1 : 0;
    default:
        ERR("invalid integer operator\n");
        return 0;
    }
    return 0;
}
