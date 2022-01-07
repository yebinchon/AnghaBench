
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int i_choices; int * ppsz_choices; int * psz_bottom; int * psz_subtitle; int * psz_title; } ;
struct TYPE_8__ {int * psz_answ; int b_ok; } ;
struct TYPE_7__ {int * psz_text; } ;
struct TYPE_10__ {TYPE_3__ menu; TYPE_2__ answ; TYPE_1__ enq; } ;
struct TYPE_11__ {int i_object_type; TYPE_4__ u; } ;
typedef TYPE_5__ mmi_t ;






 int FREENULL (int *) ;
 int free (int ) ;

__attribute__((used)) static void MMIFree( mmi_t *p_object )
{
    switch ( p_object->i_object_type )
    {
    case 130:
        FREENULL( p_object->u.enq.psz_text );
        break;

    case 131:
        if ( p_object->u.answ.b_ok )
        {
            FREENULL( p_object->u.answ.psz_answ );
        }
        break;

    case 128:
    case 129:
        FREENULL( p_object->u.menu.psz_title );
        FREENULL( p_object->u.menu.psz_subtitle );
        FREENULL( p_object->u.menu.psz_bottom );
        for ( int i = 0; i < p_object->u.menu.i_choices; i++ )
        {
            free( p_object->u.menu.ppsz_choices[i] );
        }
        FREENULL( p_object->u.menu.ppsz_choices );
        break;

    default:
        break;
    }
}
