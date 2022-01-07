
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ (* seek_cb ) (int ,int ) ;int opaque; } ;
typedef TYPE_2__ access_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static int Seek(stream_t *access, uint64_t offset)
{
    access_sys_t *sys = access->p_sys;

    assert(sys->seek_cb != ((void*)0));

    if (sys->seek_cb(sys->opaque, offset) != 0)
        return VLC_EGENERIC;
   return VLC_SUCCESS;
}
