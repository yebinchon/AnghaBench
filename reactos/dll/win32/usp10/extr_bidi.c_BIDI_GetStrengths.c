
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef int SCRIPT_CONTROL ;
typedef int BOOL ;





 int BIDI_NEUTRAL ;
 int BIDI_STRONG ;
 int BIDI_WEAK ;
 int TRUE ;

 int classify (int const*,int*,unsigned int,int const*) ;

BOOL BIDI_GetStrengths(const WCHAR *string, unsigned int count, const SCRIPT_CONTROL *c, WORD *strength)
{
    unsigned int i;

    classify(string, strength, count, c);
    for (i = 0; i < count; i++)
    {
        switch (strength[i])
        {
            case 137:
            case 136:
            case 135:
            case 132:
            case 145:
            case 131:
            case 130:
                strength[i] = BIDI_STRONG;
                break;
            case 133:
            case 140:
            case 139:
            case 138:
            case 144:
            case 141:
            case 142:
                strength[i] = BIDI_WEAK;
                break;
            case 143:
            case 129:
            case 128:
            case 134:
            default:
                strength[i] = BIDI_NEUTRAL;
        }
    }
    return TRUE;
}
