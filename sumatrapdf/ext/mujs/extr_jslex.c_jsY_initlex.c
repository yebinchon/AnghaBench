
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* filename; char const* source; int line; scalar_t__ lasttoken; } ;
typedef TYPE_1__ js_State ;


 int jsY_next (TYPE_1__*) ;

void jsY_initlex(js_State *J, const char *filename, const char *source)
{
 J->filename = filename;
 J->source = source;
 J->line = 1;
 J->lasttoken = 0;
 jsY_next(J);
}
