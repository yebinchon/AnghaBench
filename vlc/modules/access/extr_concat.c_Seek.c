
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_11__ {TYPE_1__* access; int first; int next; } ;
typedef TYPE_2__ access_sys_t ;


 TYPE_1__* GetAccess (TYPE_1__*) ;
 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_stream_Control (TYPE_1__*,int ,int*) ;
 int vlc_stream_Delete (TYPE_1__*) ;
 scalar_t__ vlc_stream_GetSize (TYPE_1__*,scalar_t__*) ;
 scalar_t__ vlc_stream_Seek (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int Seek(stream_t *access, uint64_t position)
{
    access_sys_t *sys = access->p_sys;

    if (sys->access != ((void*)0))
    {
        vlc_stream_Delete(sys->access);
        sys->access = ((void*)0);
    }

    sys->next = sys->first;

    for (uint64_t offset = 0;;)
    {
        stream_t *a = GetAccess(access);
        if (a == ((void*)0))
            break;

        bool can_seek;
        vlc_stream_Control(a, STREAM_CAN_SEEK, &can_seek);
        if (!can_seek)
            break;

        uint64_t size;

        if (vlc_stream_GetSize(a, &size))
            break;
        if (position - offset < size)
        {
            if (vlc_stream_Seek(a, position - offset))
                break;
            return VLC_SUCCESS;
        }

        offset += size;
        vlc_stream_Delete(a);
        sys->access = ((void*)0);
    }

    return VLC_EGENERIC;
}
