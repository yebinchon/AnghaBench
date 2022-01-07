
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
__attribute__((used)) static BOOL
IsSystemKey(WORD VirtualKeyCode)
{
    switch (VirtualKeyCode)
    {

        case 131:
        case 128:
        case 137:
        case 134:
        case 132:
        case 138:
        case 136:
        case 135:
        case 130:
        case 133:
        case 129:
            return TRUE;
        default:
            return FALSE;
    }
}
