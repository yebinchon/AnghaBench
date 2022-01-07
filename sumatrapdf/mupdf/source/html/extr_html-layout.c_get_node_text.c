
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* text; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ content; } ;
typedef TYPE_2__ fz_html_flow ;
typedef int fz_context ;


 scalar_t__ FLOW_SHYPHEN ;
 scalar_t__ FLOW_SPACE ;
 scalar_t__ FLOW_WORD ;

__attribute__((used)) static const char *get_node_text(fz_context *ctx, fz_html_flow *node)
{
 if (node->type == FLOW_WORD)
  return node->content.text;
 else if (node->type == FLOW_SPACE)
  return " ";
 else if (node->type == FLOW_SHYPHEN)
  return "-";
 else
  return "";
}
