
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cap; scalar_t__ len; scalar_t__ text; } ;
struct TYPE_6__ {TYPE_1__ lexbuf; } ;
typedef TYPE_2__ js_State ;


 scalar_t__ js_malloc (TYPE_2__*,int) ;

__attribute__((used)) static void textinit(js_State *J)
{
 if (!J->lexbuf.text) {
  J->lexbuf.cap = 4096;
  J->lexbuf.text = js_malloc(J, J->lexbuf.cap);
 }
 J->lexbuf.len = 0;
}
