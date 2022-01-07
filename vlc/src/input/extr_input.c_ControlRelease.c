
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_es_id_t ;
struct TYPE_5__ {int ** ids; } ;
struct TYPE_6__ {int p_address; } ;
struct TYPE_7__ {TYPE_1__ list; int * id; TYPE_2__ val; } ;
typedef TYPE_3__ input_control_param_t ;
 int free (int **) ;
 int input_item_slave_Delete (int ) ;
 int vlc_es_id_Release (int *) ;
 int vlc_renderer_item_release (int ) ;

__attribute__((used)) static void ControlRelease( int i_type, const input_control_param_t *p_param )
{
    if( p_param == ((void*)0) )
        return;

    switch( i_type )
    {
    case 133:
        if( p_param->val.p_address )
            input_item_slave_Delete( p_param->val.p_address );
        break;
    case 129:
        if( p_param->val.p_address )
            vlc_renderer_item_release( p_param->val.p_address );
        break;
    case 131:
    case 128:
    case 132:
        vlc_es_id_Release( p_param->id );
        break;
    case 130:
    {
        for (size_t i = 0; ; i++)
        {
            vlc_es_id_t *es_id = p_param->list.ids[i];
            if (es_id == ((void*)0))
                break;
            vlc_es_id_Release(es_id);
        }
        free(p_param->list.ids);
        break;
    }

    default:
        break;
    }
}
