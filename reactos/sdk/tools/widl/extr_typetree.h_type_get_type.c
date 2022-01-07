
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef enum type_type { ____Placeholder_type_type } type_type ;


 int type_get_real_type (int const*) ;
 int type_get_type_detect_alias (int ) ;

__attribute__((used)) static inline enum type_type type_get_type(const type_t *type)
{
    return type_get_type_detect_alias(type_get_real_type(type));
}
