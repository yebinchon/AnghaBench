
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;
 int SetDeferredRun (int*,int,int,int) ;


__attribute__((used)) static void resolveWhitespace(int baselevel, const WORD *pcls, BYTE *plevel, int cch)
{
    int cchrun = 0;
    BYTE oldlevel = baselevel;

    int ich = 0;
    for (; ich < cch; ich++)
    {
        switch(pcls[ich])
        {
        default:
            cchrun = 0;
            break;
        case 128:
            cchrun++;
            break;

        case 132:
        case 137:
        case 135:
        case 130:
        case 134:
        case 136:
        case 131:
        case 138:
        case 133:
        case 139:
            plevel[ich] = oldlevel;
            cchrun++;
            break;

        case 129:
        case 140:

            SetDeferredRun(plevel, cchrun, ich, baselevel);
            cchrun = 0;
            plevel[ich] = baselevel;
            break;
        }
        oldlevel = plevel[ich];
    }

    SetDeferredRun(plevel, cchrun, ich, baselevel);
}
