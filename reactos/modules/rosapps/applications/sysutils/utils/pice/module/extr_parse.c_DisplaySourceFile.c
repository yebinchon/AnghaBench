
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ cy; } ;
typedef int* LPSTR ;


 int COLOR_BACKGROUND ;
 int COLOR_FOREGROUND ;
 int Clear (size_t) ;
 int DPRINT (int ) ;
 int DisableScroll (size_t) ;
 int EnableScroll (size_t) ;
 int GLOBAL_SCREEN_WIDTH ;
 int PICE_sprintf (char*,char*,scalar_t__) ;
 int PICE_strlen (char*) ;
 int Print (size_t,char*) ;
 int ResetColor () ;
 size_t SOURCE_WINDOW ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;
 char* tempCmd ;
 TYPE_1__* wWindow ;

void DisplaySourceFile(LPSTR pSrcLine,LPSTR pSrcEnd,ULONG ulLineNumber,ULONG ulLineNumberToInvert)
{
    ULONG i;
    LPSTR pTemp;
    ULONG j = ulLineNumber-1;

    DPRINT((0,"DisplaySourceFile(%.8X,%u,%u)\n",pSrcLine,ulLineNumber,ulLineNumberToInvert));


    while(j--)
    {

        while(*pSrcLine!=0x0a && *pSrcLine!=0x0d)
            pSrcLine++;


        if(*pSrcLine == 0x0d)
            pSrcLine++;
        if(*pSrcLine == 0x0a)
            pSrcLine++;
    }

    Clear(SOURCE_WINDOW);
    DisableScroll(SOURCE_WINDOW);
    for(i=0;i<wWindow[SOURCE_WINDOW].cy;i++)
    {
        pTemp = tempCmd;

        if(pSrcLine<pSrcEnd)
        {
            PICE_sprintf(tempCmd,".%.5u ",ulLineNumber+i);
            pTemp = tempCmd + PICE_strlen(tempCmd);

            while(pSrcLine<pSrcEnd && *pSrcLine!=0x0a && *pSrcLine!=0x0d)
            {
                if(*pSrcLine==0x9)
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

                if(*pSrcLine == 0x0d)
                    pSrcLine++;
                if(*pSrcLine == 0x0a)
                    pSrcLine++;
            }

            *pTemp++ = '\n';
            *pTemp = 0;

            if(PICE_strlen(tempCmd)>GLOBAL_SCREEN_WIDTH-1)
            {
                tempCmd[GLOBAL_SCREEN_WIDTH-2]='\n';
                tempCmd[GLOBAL_SCREEN_WIDTH-1]=0;
            }

            if( (ulLineNumberToInvert!=-1) &&
               ((int)(ulLineNumberToInvert-ulLineNumber)>=0) &&
               ((ulLineNumberToInvert-ulLineNumber)<wWindow[SOURCE_WINDOW].cy) &&
               (i==(ulLineNumberToInvert-ulLineNumber)) )
            {
                SetForegroundColor(COLOR_BACKGROUND);
                SetBackgroundColor(COLOR_FOREGROUND);
            }

            Print(SOURCE_WINDOW,tempCmd);

            if( (ulLineNumberToInvert!=-1) &&
               ((int)(ulLineNumberToInvert-ulLineNumber)>=0) &&
               ((ulLineNumberToInvert-ulLineNumber)<wWindow[SOURCE_WINDOW].cy) &&
               (i==(ulLineNumberToInvert-ulLineNumber)) )
            {
                ResetColor();
            }

        }
        else
        {
            Print(SOURCE_WINDOW,"---- End of source file --------------\n");
            break;
        }
    }
    EnableScroll(SOURCE_WINDOW);
}
