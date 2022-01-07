
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int logo_t ;
struct TYPE_3__ {size_t i_counter; int * p_logo; } ;
typedef TYPE_1__ logo_list_t ;



__attribute__((used)) static logo_t *LogoListCurrent( logo_list_t *p_list )
{
    return &p_list->p_logo[p_list->i_counter];
}
