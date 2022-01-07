
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off64_t ;
struct TYPE_3__ {int data; int (* tell ) (int ) ;} ;
typedef TYPE_1__ ar_stream ;


 int stub1 (int ) ;

off64_t ar_tell(ar_stream *stream)
{
    return stream->tell(stream->data);
}
