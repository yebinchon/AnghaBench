
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {char* Cmd; scalar_t__ CommandGroup; int Help; } ;
struct TYPE_3__ {scalar_t__ cy; scalar_t__ y; } ;
typedef char* LPSTR ;


 int COLOR_CAPTION ;
 int COLOR_TEXT ;
 scalar_t__ COMMAND_GROUP_HELP_ONLY ;
 int ClrLine (scalar_t__) ;
 TYPE_2__* CmdTable ;
 size_t OUTPUT_WINDOW ;
 int PICE_sprintf (char*,char*,int ) ;
 int PICE_strcat (char*,char*) ;
 int PICE_strlen (char*) ;
 scalar_t__ PICE_strncmpi (char*,char*,int ) ;
 int PutChar (char*,int,scalar_t__) ;
 int ResetColor () ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;
 char* tempCmd ;
 TYPE_1__* wWindow ;

LPSTR FindCommand(LPSTR p)
{
    ULONG i,j,k=0;
    LPSTR result=((void*)0);

 tempCmd[0]=0;
 for(j=0,i=0;CmdTable[i].Cmd!=((void*)0);i++)
 {
  if(PICE_strncmpi(CmdTable[i].Cmd,p,PICE_strlen(p)) == 0 &&
           CmdTable[i].CommandGroup != COMMAND_GROUP_HELP_ONLY)
  {
   if(PICE_strlen(tempCmd))
    PICE_strcat(tempCmd,", ");
   PICE_strcat(tempCmd,CmdTable[i].Cmd);
   j++;
   k=i;
  }
 }
 if(PICE_strlen(tempCmd))
 {
  SetBackgroundColor(COLOR_CAPTION);
  SetForegroundColor(COLOR_TEXT);
  ClrLine(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
  PutChar(tempCmd,1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
  if(j==1)
  {
   PICE_sprintf(tempCmd,"%s",CmdTable[k].Help);
   PutChar(tempCmd,40,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
   result=CmdTable[k].Cmd;
  }
        ResetColor();
 }
 return result;
}
