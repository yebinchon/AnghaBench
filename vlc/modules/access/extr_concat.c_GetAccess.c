
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_12__ {TYPE_1__* next; TYPE_2__* access; } ;
typedef TYPE_3__ access_sys_t ;
struct TYPE_10__ {struct TYPE_10__* next; int mrl; } ;


 int VLC_OBJECT (TYPE_2__*) ;
 TYPE_2__* vlc_access_NewMRL (int ,int ) ;
 int vlc_stream_Delete (TYPE_2__*) ;
 int vlc_stream_Eof (TYPE_2__*) ;

__attribute__((used)) static stream_t *GetAccess(stream_t *access)
{
    access_sys_t *sys = access->p_sys;
    stream_t *a = sys->access;

    if (a != ((void*)0))
    {
        if (!vlc_stream_Eof(a))
            return a;

        vlc_stream_Delete(a);
        sys->access = ((void*)0);
    }

    if (sys->next == ((void*)0))
        return ((void*)0);

    a = vlc_access_NewMRL(VLC_OBJECT(access), sys->next->mrl);
    if (a == ((void*)0))
        return ((void*)0);

    sys->access = a;
    sys->next = sys->next->next;
    return a;
}
