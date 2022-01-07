
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * CommandPtr ;


 int * gCommands ;
 scalar_t__ gNumCommands ;
 int * kNoCommand ;

CommandPtr
GetCommandByIndex(const int i)
{
 if ((i < 0) || (i >= (int) gNumCommands))
  return (kNoCommand);
 return (&gCommands[i]);
}
