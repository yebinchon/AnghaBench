
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {scalar_t__ y; } ;
struct TYPE_4__ {scalar_t__ ImageFileName; } ;
typedef TYPE_1__* PEPROCESS ;
typedef scalar_t__ LPSTR ;


 int COLOR_CAPTION ;
 int COLOR_TEXT ;
 int ClrLine (scalar_t__) ;
 int ENTER_FUNC () ;
 TYPE_1__* IoGetCurrentProcess () ;
 scalar_t__ IsAddressValid (int ) ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int PICE_sprintf (int ,char*,int ,...) ;
 int PutChar (int ,int,scalar_t__) ;
 int ResetColor () ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;
 int tempShell ;
 TYPE_2__* wWindow ;

void ShowStatusLine(void)
{
 PEPROCESS pCurrentProcess = IoGetCurrentProcess();
    LPSTR pProcessName;

    ENTER_FUNC();

    if(IsAddressValid((ULONG)pCurrentProcess))
    {
        SetForegroundColor(COLOR_TEXT);
     SetBackgroundColor(COLOR_CAPTION);

  ClrLine(wWindow[OUTPUT_WINDOW].y-1);

        pProcessName = pCurrentProcess->ImageFileName;
        if(IsAddressValid((ULONG)pProcessName) )
        {
      PICE_sprintf(tempShell,
                    " PROCESS(%.8X \"%s\") ",
                    (ULONG)pCurrentProcess,pProcessName);
        }
        else
        {
      PICE_sprintf(tempShell,
                    " PROCESS(%.8X) ",
                    (ULONG)pCurrentProcess);
        }
  PutChar(tempShell,1,wWindow[OUTPUT_WINDOW].y-1);

        ResetColor();
    }

    LEAVE_FUNC();
}
