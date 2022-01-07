
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VADisplay ;
typedef int VABufferID ;


 int VA_CALL (int *,int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaUnmapBuffer ;

int
vlc_vaapi_UnmapBuffer(vlc_object_t *o, VADisplay dpy, VABufferID buf_id)
{
    VA_CALL(o, vaUnmapBuffer, dpy, buf_id);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}
