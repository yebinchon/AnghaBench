
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pf_reset ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ts_stream_processor_t ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static inline void ts_stream_processor_Reset( ts_stream_processor_t *sp )
{
    if( sp && sp->pf_reset )
        sp->pf_reset( sp );
}
