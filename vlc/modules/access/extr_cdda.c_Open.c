
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vcddev_t ;
struct TYPE_2__ {int psz_filepath; int psz_location; } ;
typedef TYPE_1__ stream_t ;


 int AccessOpen (int *,int *) ;
 int DemuxOpen (int *,int *,unsigned int) ;
 int * DiscOpen (int *,int ,int ,unsigned int*) ;
 int VLC_EGENERIC ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    unsigned track;

    vcddev_t *dev = DiscOpen(obj, stream->psz_location, stream->psz_filepath,
                             &track);
    if (dev == ((void*)0))
        return VLC_EGENERIC;

    if (track == 0)
        return AccessOpen(obj, dev);
    else
        return DemuxOpen(obj, dev, track);
}
