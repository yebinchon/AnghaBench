
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int bot; int top; } ;
typedef TYPE_1__ js_State ;
struct TYPE_17__ {char* s; } ;
typedef TYPE_2__ js_Buffer ;


 int js_copy (TYPE_1__*,int) ;
 int js_endtry (TYPE_1__*) ;
 int js_free (TYPE_1__*,TYPE_2__*) ;
 int js_pop (TYPE_1__*,int) ;
 int js_pushstring (TYPE_1__*,char*) ;
 int js_putc (TYPE_1__*,TYPE_2__**,int ) ;
 int js_throw (TYPE_1__*) ;
 scalar_t__ js_try (TYPE_1__*) ;
 int reprvalue (TYPE_1__*,TYPE_2__**) ;

void js_repr(js_State *J, int idx)
{
 js_Buffer *sb = ((void*)0);
 int savebot;

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }

 js_copy(J, idx);

 savebot = J->bot;
 J->bot = J->top - 1;
 reprvalue(J, &sb);
 J->bot = savebot;

 js_pop(J, 1);

 js_putc(J, &sb, 0);
 js_pushstring(J, sb ? sb->s : "undefined");

 js_endtry(J);
 js_free(J, sb);
}
