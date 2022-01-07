
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arg; } ;


 TYPE_1__** macro_args ;
 int nmacro_args ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int marg_index(char *id)
{
 int t;
 if(!id)
  return -1;
 for(t = 0; t < nmacro_args; t++)
 {
  if(!strcmp(id, macro_args[t]->arg))
   break;
 }
 return t < nmacro_args ? t : -1;
}
