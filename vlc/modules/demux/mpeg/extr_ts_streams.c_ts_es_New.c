
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int i_number; } ;
typedef TYPE_2__ ts_pmt_t ;
struct TYPE_8__ {scalar_t__ i_service_id; scalar_t__ i_format; } ;
struct TYPE_11__ {int i_group; } ;
struct TYPE_10__ {int b_interlaced; TYPE_1__ metadata; TYPE_7__ fmt; int * p_next; int * p_extraes; scalar_t__ i_next_block_flags; scalar_t__ i_sl_es_id; int * id; TYPE_2__* p_program; } ;
typedef TYPE_3__ ts_es_t ;


 int UNKNOWN_ES ;
 int es_format_Init (TYPE_7__*,int ,int ) ;
 TYPE_3__* malloc (int) ;

ts_es_t * ts_es_New( ts_pmt_t *p_program )
{
    ts_es_t *p_es = malloc( sizeof(*p_es) );
    if( p_es )
    {
        p_es->p_program = p_program;
        p_es->id = ((void*)0);
        p_es->i_sl_es_id = 0;
        p_es->i_next_block_flags = 0;
        p_es->p_extraes = ((void*)0);
        p_es->p_next = ((void*)0);
        p_es->b_interlaced = 0;
        es_format_Init( &p_es->fmt, UNKNOWN_ES, 0 );
        p_es->fmt.i_group = p_program->i_number;
        p_es->metadata.i_format = 0;
        p_es->metadata.i_service_id = 0;
    }
    return p_es;
}
