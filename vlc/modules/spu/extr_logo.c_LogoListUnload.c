
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_pic; } ;
typedef TYPE_1__ logo_t ;
struct TYPE_6__ {unsigned int i_count; TYPE_1__* p_logo; } ;
typedef TYPE_2__ logo_list_t ;


 int free (TYPE_1__*) ;
 int picture_Release (scalar_t__) ;

__attribute__((used)) static void LogoListUnload( logo_list_t *p_list )
{
    for( unsigned i = 0; i < p_list->i_count; i++ )
    {
        logo_t *p_logo = &p_list->p_logo[i];

        if( p_logo->p_pic )
            picture_Release( p_logo->p_pic );
    }
    free( p_list->p_logo );
}
