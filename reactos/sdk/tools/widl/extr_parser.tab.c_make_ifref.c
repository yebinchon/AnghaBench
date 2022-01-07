
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_4__ {int * attrs; int * iface; } ;
typedef TYPE_1__ ifref_t ;


 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static ifref_t *make_ifref(type_t *iface)
{
  ifref_t *l = xmalloc(sizeof(ifref_t));
  l->iface = iface;
  l->attrs = ((void*)0);
  return l;
}
