
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int i_extra; int * p_extra; } ;
typedef TYPE_5__ es_format_t ;
struct TYPE_14__ {TYPE_5__ fmt_out; TYPE_7__* p_sys; } ;
typedef TYPE_6__ decoder_t ;
struct TYPE_12__ {TYPE_3__* p_ep; } ;
struct TYPE_10__ {TYPE_1__* p_sh; } ;
struct TYPE_15__ {TYPE_4__ ep; TYPE_2__ sh; int b_entry_point; int b_sequence_header; } ;
typedef TYPE_7__ decoder_sys_t ;
struct TYPE_11__ {int i_buffer; int p_buffer; } ;
struct TYPE_9__ {int i_buffer; int p_buffer; } ;


 int memcpy (int *,int ,int) ;
 int * xrealloc (int *,int) ;

__attribute__((used)) static void BuildExtraData( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    es_format_t *p_es = &p_dec->fmt_out;
    int i_extra;
    if( !p_sys->b_sequence_header || !p_sys->b_entry_point )
        return;

    i_extra = p_sys->sh.p_sh->i_buffer + p_sys->ep.p_ep->i_buffer;
    if( p_es->i_extra != i_extra )
    {
        p_es->i_extra = i_extra;
        p_es->p_extra = xrealloc( p_es->p_extra, p_es->i_extra );
    }
    memcpy( p_es->p_extra,
            p_sys->sh.p_sh->p_buffer, p_sys->sh.p_sh->i_buffer );
    memcpy( (uint8_t*)p_es->p_extra + p_sys->sh.p_sh->i_buffer,
            p_sys->ep.p_ep->p_buffer, p_sys->ep.p_ep->i_buffer );
}
