
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tracetop; TYPE_1__* trace; } ;
typedef TYPE_2__ js_State ;
struct TYPE_4__ {char* name; char* file; int line; } ;


 int printf (char*,...) ;

void js_stacktrace(js_State *J)
{
 int n;
 printf("stack trace:\n");
 for (n = J->tracetop; n >= 0; --n) {
  const char *name = J->trace[n].name;
  const char *file = J->trace[n].file;
  int line = J->trace[n].line;
  if (line > 0) {
   if (name[0])
    printf("\tat %s (%s:%d)\n", name, file, line);
   else
    printf("\tat %s:%d\n", file, line);
  } else
   printf("\tat %s (%s)\n", name, file);
 }
}
