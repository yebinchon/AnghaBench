
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct index_entry_s {int dummy; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_6__ {size_t i_count; TYPE_4__* p_array; } ;
struct TYPE_8__ {TYPE_1__ index; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_9__ {int active; } ;


 int index_Compare ;
 int qsort (TYPE_4__*,size_t,int,int ) ;

__attribute__((used)) static void BuildIndex( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    qsort( p_sys->index.p_array, p_sys->index.i_count,
           sizeof(struct index_entry_s), index_Compare );
    unsigned i_overlaps = 0;
    for( size_t i=0; i<p_sys->index.i_count; i++ )
    {
        if( p_sys->index.p_array[i].active )
            p_sys->index.p_array[i].active = ++i_overlaps;
        else
            p_sys->index.p_array[i].active = --i_overlaps;
    }
}
