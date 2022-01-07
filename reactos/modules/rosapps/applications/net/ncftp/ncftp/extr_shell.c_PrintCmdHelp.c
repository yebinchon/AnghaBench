
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* help; } ;
typedef TYPE_1__* CommandPtr ;


 int printf (char*,char*,char*) ;

void
PrintCmdHelp(CommandPtr c)
{
 (void) printf("%s: %s.\n", c->name, c->help);
}
