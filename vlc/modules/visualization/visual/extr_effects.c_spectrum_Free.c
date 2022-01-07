
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* p_prev_s16_buff; struct TYPE_3__* prev_heights; struct TYPE_3__* peaks; } ;
typedef TYPE_1__ spectrum_data ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void spectrum_Free( void *data )
{
    spectrum_data *p_data = data;

    if( p_data != ((void*)0) )
    {
        free( p_data->peaks );
        free( p_data->prev_heights );
        free( p_data->p_prev_s16_buff );
        free( p_data );
    }
}
