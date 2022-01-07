
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_2__ {char const* display_name; } ;


 TYPE_1__* allowed_attr ;

const char *get_attr_display_name(enum attr_type type)
{
    return allowed_attr[type].display_name;
}
