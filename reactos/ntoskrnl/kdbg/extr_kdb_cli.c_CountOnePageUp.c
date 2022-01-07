
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ PCHAR ;


 int ASSERT (int) ;
 int KdbNumberOfColsTerminal ;
 int KdbNumberOfRowsTerminal ;
 scalar_t__ memrchr (scalar_t__,char,int) ;

PCHAR
CountOnePageUp(PCHAR Buffer, ULONG BufLength, PCHAR pCurPos)
{
    PCHAR p;

    ULONG p0len = KdbNumberOfRowsTerminal * KdbNumberOfColsTerminal;
    PCHAR p0 = pCurPos - p0len;
    PCHAR prev_p = p0, p1;
    ULONG j;

    if (pCurPos < Buffer)
        pCurPos = Buffer;
    ASSERT(pCurPos <= Buffer + BufLength);

    p = memrchr(p0, '\n', p0len);
    if (((void*)0) == p)
        p = p0;
    for (j = KdbNumberOfRowsTerminal; j--; )
    {
        int linesCnt;
        p1 = memrchr(p0, '\n', p-p0);
        prev_p = p;
        p = p1;
        if (((void*)0) == p)
        {
            p = prev_p;
            if (((void*)0) == p)
                p = p0;
            break;
        }
        linesCnt = (KdbNumberOfColsTerminal+prev_p-p-2) / KdbNumberOfColsTerminal;
        if (linesCnt > 1)
            j -= linesCnt-1;
    }

    ASSERT(p != 0);
    ++p;
    return p;
}
