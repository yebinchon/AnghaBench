
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int gDoneApplication ;
 int gUnusedArg ;

void
QuitCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 ARGSUSED(gUnusedArg);
 gDoneApplication = 1;
}
