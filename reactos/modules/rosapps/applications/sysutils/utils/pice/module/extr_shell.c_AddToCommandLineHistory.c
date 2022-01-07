
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int LPSTR ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t LINES_IN_COMMAND_BUFFER ;
 scalar_t__ PICE_strcmpi (char*,int ) ;
 int PICE_strcpy (char*,int ) ;
 scalar_t__ PICE_strlen (int ) ;
 char** aszCommandLines ;
 size_t ulCommandCurrentPos ;
 size_t ulCommandInPos ;
 size_t ulCommandLastPos ;

void AddToCommandLineHistory(LPSTR s)
{
    ULONG i;

    ENTER_FUNC();
    DPRINT((0,"AddToCommandLineHistory(%s)\n",s));

    if(PICE_strlen(s))
    {
        for(i=0;i<LINES_IN_COMMAND_BUFFER;i++)
        {
            if(PICE_strcmpi(&aszCommandLines[i][1],s) == 0)
            {
                DPRINT((0,"AddToCommandLineHistory(): command line already exists\n"));
                LEAVE_FUNC();
                return;
            }
        }
        aszCommandLines[ulCommandInPos][0]=':';
        PICE_strcpy(&aszCommandLines[ulCommandInPos][1],s);
        ulCommandCurrentPos = ulCommandInPos = (ulCommandInPos +1)%LINES_IN_COMMAND_BUFFER;
        if(ulCommandInPos == ulCommandLastPos)
        {
            ulCommandLastPos = (ulCommandLastPos+1)%LINES_IN_COMMAND_BUFFER;
        }
    }

    LEAVE_FUNC();
}
