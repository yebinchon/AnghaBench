
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p_pat; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_10__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_7__ {int handle; } ;


 int block_Release (TYPE_4__*) ;
 int dvbpsi_packet_push (int ,int ) ;

__attribute__((used)) static void BuildPATCallback( void *p_opaque, block_t *p_block )
{
    ts_pid_t *pat_pid = (ts_pid_t *) p_opaque;
    dvbpsi_packet_push( pat_pid->u.p_pat->handle, p_block->p_buffer );
    block_Release( p_block );
}
