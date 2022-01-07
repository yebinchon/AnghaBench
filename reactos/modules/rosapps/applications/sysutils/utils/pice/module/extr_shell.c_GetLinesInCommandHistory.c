
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int LINES_IN_COMMAND_BUFFER ;
 int ulCommandInPos ;
 int ulCommandLastPos ;

ULONG GetLinesInCommandHistory(void)
{
    ULONG ulResult = (ulCommandInPos-ulCommandLastPos)%LINES_IN_COMMAND_BUFFER;

    ENTER_FUNC();

    DPRINT((0,"GetLinesInCommandHistory() returns %u (ulIn %u ulLast %u)\n",ulResult,ulCommandInPos,ulCommandLastPos));

    LEAVE_FUNC();

    return ulResult;
}
