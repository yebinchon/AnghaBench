
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* usage; char* name; } ;
typedef TYPE_1__* CommandPtr ;


 int printf (char*,char*,char*) ;

void
PrintCmdUsage(CommandPtr c)
{
 if (c->usage != ((void*)0))
  (void) printf("Usage: %s %s\n", c->name, c->usage);
}
