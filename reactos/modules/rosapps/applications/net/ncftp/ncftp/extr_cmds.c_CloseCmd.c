
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connected; } ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int CloseHost () ;
 TYPE_1__ gConn ;
 int gUnusedArg ;
 int printf (char*) ;

void
CloseCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 ARGSUSED(gUnusedArg);
 if (gConn.connected == 0)
  (void) printf("Already closed.\n");
 else
  CloseHost();
}
