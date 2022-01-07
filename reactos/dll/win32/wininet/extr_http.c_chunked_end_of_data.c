
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_request_t ;
typedef int data_stream_t ;
struct TYPE_2__ {int state; } ;
typedef TYPE_1__ chunked_stream_t ;
typedef int BOOL ;





 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL chunked_end_of_data(data_stream_t *stream, http_request_t *req)
{
    chunked_stream_t *chunked_stream = (chunked_stream_t*)stream;
    switch(chunked_stream->state) {
    case 130:
    case 129:
    case 128:
        return TRUE;
    default:
        return FALSE;
    }
}
