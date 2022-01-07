
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * structure; int * enumeration; int * iface; int * function; } ;
struct TYPE_6__ {TYPE_1__ details; } ;
typedef TYPE_2__ type_t ;


 int FALSE ;
 int TRUE ;
 int type_get_type_detect_alias (TYPE_2__ const*) ;

__attribute__((used)) static inline int type_is_complete(const type_t *type)
{
    switch (type_get_type_detect_alias(type))
    {
    case 134:
        return (type->details.function != ((void*)0));
    case 133:
        return (type->details.iface != ((void*)0));
    case 135:
        return (type->details.enumeration != ((void*)0));
    case 129:
    case 136:
    case 130:
        return (type->details.structure != ((void*)0));
    case 128:
    case 139:
    case 141:
    case 132:
    case 137:
    case 131:
    case 140:
    case 138:
        return TRUE;
    }
    return FALSE;
}
