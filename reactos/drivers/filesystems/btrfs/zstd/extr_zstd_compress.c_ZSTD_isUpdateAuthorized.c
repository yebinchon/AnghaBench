
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_cParameter ;
__attribute__((used)) static int ZSTD_isUpdateAuthorized(ZSTD_cParameter param)
{
    switch(param)
    {
    case 147:
    case 139:
    case 149:
    case 130:
    case 133:
    case 129:
    case 146:
        return 1;

    case 140:
    case 128:
    case 145:
    case 148:
    case 144:
    case 141 :
    case 132:
    case 138:
    case 131:
    case 143:
    case 135:
    case 134:
    case 137:
    case 136:
    case 142:
    default:
        return 0;
    }
}
