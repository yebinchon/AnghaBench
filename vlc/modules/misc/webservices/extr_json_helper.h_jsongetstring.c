
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* ptr; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ json_value ;


 TYPE_3__* json_getbyname (TYPE_3__ const*,char const*) ;
 scalar_t__ json_string ;

__attribute__((used)) static inline
char * jsongetstring(const json_value *node, const char *key)
{
    node = json_getbyname(node, key);
    if (node && node->type == json_string)
        return node->u.string.ptr;
    return ((void*)0);
}
