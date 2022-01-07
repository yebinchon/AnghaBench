
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pval; } ;
struct TYPE_5__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ attr_t ;
typedef int attr_list_t ;




 int append_attr (int *,int ) ;
 int make_attrp (int const,int ) ;

__attribute__((used)) static int async_iface_attrs(attr_list_t *attrs, const attr_t *attr)
{
    switch(attr->type)
    {
    case 128:
        return 0;
    case 129:
        append_attr(attrs, make_attrp(128, attr->u.pval));
        return 0;
    default:
        return 1;
    }
}
