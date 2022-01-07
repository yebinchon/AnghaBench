
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool ControlIsSeekRequest( int i_type )
{
    switch( i_type )
    {
    case 135:
    case 144:
    case 131:
    case 143:
    case 130:
    case 129:
    case 128:
    case 134:
    case 133:
    case 132:
    case 142:
    case 136:
    case 141:
    case 140:
    case 137:
    case 138:
    case 139:
        return 1;
    default:
        return 0;
    }
}
