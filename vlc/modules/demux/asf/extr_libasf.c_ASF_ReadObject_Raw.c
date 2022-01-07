
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int asf_object_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static int ASF_ReadObject_Raw(stream_t *s, asf_object_t *p_obj)
{
    VLC_UNUSED(s);
    VLC_UNUSED(p_obj);
    return VLC_SUCCESS;
}
