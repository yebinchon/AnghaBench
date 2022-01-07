
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef char* gme_err_t ;


 int vlc_stream_Read (int *,void*,int) ;

__attribute__((used)) static gme_err_t ReaderStream (void *data, void *buf, int length)
{
    stream_t *s = data;

    if (vlc_stream_Read (s, buf, length) < length)
        return "short read";
    return ((void*)0);
}
