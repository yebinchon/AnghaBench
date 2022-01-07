
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ post_data; int headers; scalar_t__ post_stream; } ;
typedef TYPE_1__ request_data_t ;


 int GlobalFree (scalar_t__) ;
 int heap_free (int ) ;
 int nsIInputStream_Release (scalar_t__) ;

__attribute__((used)) static void release_request_data(request_data_t *request_data)
{
    if(request_data->post_stream)
        nsIInputStream_Release(request_data->post_stream);
    heap_free(request_data->headers);
    if(request_data->post_data)
        GlobalFree(request_data->post_data);
}
