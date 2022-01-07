
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct skiptags_sys_t {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ stream_t ;


 int skiptags_sys_Delete (struct skiptags_sys_t*) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    struct skiptags_sys_t *sys = (struct skiptags_sys_t *) stream->p_sys;

    skiptags_sys_Delete(sys);
}
