
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * (* pf_push ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__ ts_stream_processor_t ;
typedef int block_t ;


 int * stub1 (TYPE_1__*,int ,int *) ;

__attribute__((used)) static inline block_t * ts_stream_processor_Push( ts_stream_processor_t *sp, uint8_t i_stream_id, block_t *b )
{
    return (sp) ? sp->pf_push( sp, i_stream_id, b ) : b;
}
