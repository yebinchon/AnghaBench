
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tracetop; TYPE_1__* trace; } ;
typedef TYPE_2__ js_State ;
struct TYPE_5__ {char const* name; char const* file; int line; } ;


 int JS_ENVLIMIT ;
 int js_error (TYPE_2__*,char*) ;

__attribute__((used)) static void jsR_pushtrace(js_State *J, const char *name, const char *file, int line)
{
 if (J->tracetop + 1 == JS_ENVLIMIT)
  js_error(J, "call stack overflow");
 ++J->tracetop;
 J->trace[J->tracetop].name = name;
 J->trace[J->tracetop].file = file;
 J->trace[J->tracetop].line = line;
}
