
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_UNUSED (void*) ;
 int g_free (void*) ;

__attribute__((used)) static void foreach_g_free(void *data, void *userdata)
{
    g_free(data);
    VLC_UNUSED(userdata);
}
