
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eType; char* zText; } ;
typedef TYPE_1__ CmdLineOption ;


 scalar_t__ CMDLINE_INTEGER ;
 scalar_t__ CMDLINE_STRING ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void option_requires_argument_error(CmdLineOption *pOpt){
  fprintf(stderr, "Option requires a%s argument: %s\n",
      pOpt->eType==CMDLINE_INTEGER ? "n integer" :
      pOpt->eType==CMDLINE_STRING ? " string" : " boolean",
      pOpt->zText
  );
  exit(1);
}
