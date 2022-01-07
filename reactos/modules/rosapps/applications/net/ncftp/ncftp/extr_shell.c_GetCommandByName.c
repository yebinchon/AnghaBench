
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bsearch_proc_t ;
typedef int * CommandPtr ;
typedef int Command ;


 scalar_t__ CommandExactSearchCmp ;
 scalar_t__ CommandSubSearchCmp (char const* const,int *) ;
 scalar_t__ bsearch (char const* const,int *,int,int,int ) ;
 int * gCommands ;
 int gNumCommands ;
 int * kAmbiguousCommand ;
 int * kNoCommand ;

CommandPtr
GetCommandByName(const char *const name, int wantExactMatch)
{
 CommandPtr canp, canp2;





 canp = (CommandPtr) bsearch(name, gCommands, gNumCommands, sizeof(Command), (bsearch_proc_t) CommandExactSearchCmp);

 if (canp == kNoCommand && !wantExactMatch) {



  canp = (CommandPtr) bsearch(name, gCommands, gNumCommands, sizeof(Command), (bsearch_proc_t) CommandSubSearchCmp);

  if (canp != kNoCommand) {



   if (canp != &gCommands[0]) {
    canp2 = canp - 1;
    if (CommandSubSearchCmp(name, canp2) == 0)
     return kAmbiguousCommand;
   }



   if (canp != &gCommands[gNumCommands - 1]) {
    canp2 = canp + 1;
    if (CommandSubSearchCmp(name, canp2) == 0)
     return kAmbiguousCommand;
   }
  }
 }
 return canp;
}
