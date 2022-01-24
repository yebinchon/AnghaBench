#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ cy; } ;
typedef  int* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_BACKGROUND ; 
 int /*<<< orphan*/  COLOR_FOREGROUND ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int GLOBAL_SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t SOURCE_WINDOW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* tempCmd ; 
 TYPE_1__* wWindow ; 

void FUNC10(LPSTR pSrcLine,LPSTR pSrcEnd,ULONG ulLineNumber,ULONG ulLineNumberToInvert)
{
    ULONG i;
    LPSTR pTemp;
    ULONG j = ulLineNumber-1;

    FUNC1((0,"DisplaySourceFile(%.8X,%u,%u)\n",pSrcLine,ulLineNumber,ulLineNumberToInvert));

    // go to line
    while(j--)
    {
        // goto end of current line
        while(*pSrcLine!=0x0a && *pSrcLine!=0x0d)
            pSrcLine++;

        // skip over the line end
        if(*pSrcLine == 0x0d)
            pSrcLine++;
        if(*pSrcLine == 0x0a)
            pSrcLine++;
    }

    FUNC0(SOURCE_WINDOW);
    FUNC2(SOURCE_WINDOW);
    for(i=0;i<wWindow[SOURCE_WINDOW].cy;i++)
    {
        pTemp = tempCmd;

        if(pSrcLine<pSrcEnd)
        {
            FUNC4(tempCmd,".%.5u ",ulLineNumber+i);
            pTemp = tempCmd + FUNC5(tempCmd);

            while(pSrcLine<pSrcEnd && *pSrcLine!=0x0a && *pSrcLine!=0x0d)
            {
                if(*pSrcLine==0x9) // TAB
                {
                    *pTemp++ = 0x20;
                    *pTemp++ = 0x20;
                    *pTemp++ = 0x20;
                    *pTemp++ = 0x20;
                    pSrcLine++;
                }
                else
                {
                    *pTemp++ = *pSrcLine++;
                }
            }

            if(pSrcLine<pSrcEnd)
            {
                // skip over the line end
                if(*pSrcLine == 0x0d)
                    pSrcLine++;
                if(*pSrcLine == 0x0a)
                    pSrcLine++;
            }

            *pTemp++ = '\n';
            *pTemp = 0;

            if(FUNC5(tempCmd)>GLOBAL_SCREEN_WIDTH-1)
            {
                tempCmd[GLOBAL_SCREEN_WIDTH-2]='\n';
                tempCmd[GLOBAL_SCREEN_WIDTH-1]=0;
            }

            if( (ulLineNumberToInvert!=-1) &&
               ((int)(ulLineNumberToInvert-ulLineNumber)>=0) &&
               ((ulLineNumberToInvert-ulLineNumber)<wWindow[SOURCE_WINDOW].cy) &&
               (i==(ulLineNumberToInvert-ulLineNumber)) )
            {
                FUNC9(COLOR_BACKGROUND);
                FUNC8(COLOR_FOREGROUND);
            }

            FUNC6(SOURCE_WINDOW,tempCmd);

            if( (ulLineNumberToInvert!=-1) &&
               ((int)(ulLineNumberToInvert-ulLineNumber)>=0) &&
               ((ulLineNumberToInvert-ulLineNumber)<wWindow[SOURCE_WINDOW].cy) &&
               (i==(ulLineNumberToInvert-ulLineNumber)) )
            {
                FUNC7();
            }

        }
        else
        {
            FUNC6(SOURCE_WINDOW,"---- End of source file --------------\n");
            break;
        }
    }
    FUNC3(SOURCE_WINDOW);
}