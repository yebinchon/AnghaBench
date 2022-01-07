
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_5__ {scalar_t__ ival; } ;
struct TYPE_6__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ attr_t ;


 TYPE_2__* xmalloc (int) ;

__attribute__((used)) static attr_t *make_attr(enum attr_type type)
{
  attr_t *a = xmalloc(sizeof(attr_t));
  a->type = type;
  a->u.ival = 0;
  return a;
}
