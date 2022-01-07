
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data_stream_t ;
typedef int chunked_stream_t ;


 int heap_free (int *) ;

__attribute__((used)) static void chunked_destroy(data_stream_t *stream)
{
    chunked_stream_t *chunked_stream = (chunked_stream_t*)stream;
    heap_free(chunked_stream);
}
