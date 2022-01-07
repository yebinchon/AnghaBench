
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lexline; } ;
typedef TYPE_1__ js_State ;
struct TYPE_8__ {char const* string; } ;
typedef TYPE_2__ js_Ast ;
typedef enum js_AstType { ____Placeholder_js_AstType } js_AstType ;


 TYPE_2__* jsP_newnode (TYPE_1__*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static js_Ast *jsP_newstrnode(js_State *J, enum js_AstType type, const char *s)
{
 js_Ast *node = jsP_newnode(J, type, J->lexline, 0, 0, 0, 0);
 node->string = s;
 return node;
}
