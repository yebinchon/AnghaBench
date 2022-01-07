
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priv; } ;
typedef TYPE_1__ ts_stream_processor_t ;
typedef TYPE_1__ Metadata_stream_processor_context_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void Metadata_stream_processor_Delete( ts_stream_processor_t *h )
{
    Metadata_stream_processor_context_t *ctx = (Metadata_stream_processor_context_t *) h->priv;
    free( ctx );
    free( h );
}
