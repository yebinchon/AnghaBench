
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ data_stream_t ;
struct TYPE_5__ {int (* destroy ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static inline void destroy_data_stream(data_stream_t *stream)
{
    stream->vtbl->destroy(stream);
}
