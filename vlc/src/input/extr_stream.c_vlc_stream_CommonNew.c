
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;


 int * vlc_stream_CustomNew (int *,void (*) (int *),int ,char*) ;

stream_t *vlc_stream_CommonNew(vlc_object_t *parent,
                               void (*destroy)(stream_t *))
{
    return vlc_stream_CustomNew(parent, destroy, 0, "stream");
}
