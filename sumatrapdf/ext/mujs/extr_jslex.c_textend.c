
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* text; } ;
struct TYPE_6__ {TYPE_1__ lexbuf; } ;
typedef TYPE_2__ js_State ;


 int textpush (TYPE_2__*,int ) ;

__attribute__((used)) static char *textend(js_State *J)
{
 textpush(J, 0);
 return J->lexbuf.text;
}
