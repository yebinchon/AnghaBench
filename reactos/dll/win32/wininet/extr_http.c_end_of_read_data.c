
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* data_stream; int read_size; } ;
typedef TYPE_2__ http_request_t ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {scalar_t__ (* end_of_data ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef int BOOL ;


 scalar_t__ stub1 (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static BOOL end_of_read_data( http_request_t *req )
{
    return !req->read_size && req->data_stream->vtbl->end_of_data(req->data_stream, req);
}
