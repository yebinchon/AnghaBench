
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int Set (char const*,char const*) ;
 int gUnusedArg ;

void
SetCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 ARGSUSED(gUnusedArg);
 if (argc < 2)
  Set(((void*)0), ((void*)0));
 else if (argc == 2)
  Set(argv[1], ((void*)0));
 else
  Set(argv[1], argv[2]);
}
