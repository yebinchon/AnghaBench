
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



 int CIM_ILLEGAL ;
__attribute__((used)) static UINT resolve_type( UINT left, UINT right )
{
    switch (left)
    {
    case 133:
    case 136:
    case 135:
    case 134:
    case 128:
    case 131:
    case 130:
    case 129:
        switch (right)
        {
            case 133:
            case 136:
            case 135:
            case 134:
            case 128:
            case 131:
            case 130:
            case 129:
                return 129;
            default: break;
        }
        break;

    case 132:
        if (right == 132) return 132;
        break;

    case 137:
        if (right == 137) return 137;
        break;

    default:
        break;
    }
    return CIM_ILLEGAL;
}
