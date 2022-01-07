
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* close ) (int ) ;} ;
typedef TYPE_1__ ar_stream ;


 int free (TYPE_1__*) ;
 int stub1 (int ) ;

void ar_close(ar_stream *stream)
{
    if (stream)
        stream->close(stream->data);
    free(stream);
}
