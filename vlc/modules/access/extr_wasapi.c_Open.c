
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {char* psz_location; int * out; int pf_control; int * pf_demux; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int ** events; int * client; int * es; int * thread; int * ready; int frame_size; int caching; int start_time; } ;
typedef TYPE_2__ demux_sys_t ;
typedef int HRESULT ;
typedef int * HANDLE ;


 int COINIT_MULTITHREADED ;
 int CloseHandle (int *) ;
 int CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 int Control ;
 int * CreateES (TYPE_1__*,int *,int,int ,int *) ;
 void* CreateEvent (int *,int ,int ,int *) ;
 int FAILED (int ) ;
 int FALSE ;
 int * GetClient (TYPE_1__*,int*) ;
 int IAudioClient_Release (int *) ;
 int IAudioClient_SetEventHandle (int *,int *) ;
 int INFINITE ;
 int Thread ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_FROM_MS (int ) ;
 int WaitForSingleObject (int *,int ) ;
 uintptr_t _beginthreadex (int *,int ,int ,TYPE_1__*,int ,int *) ;
 int es_out_Del (int *,int *) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ unlikely (int) ;
 int var_InheritInteger (int *,char*) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;
 int vlc_tick_now () ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    HRESULT hr;

    if (demux->out == ((void*)0))
        return VLC_EGENERIC;

    if (demux->psz_location != ((void*)0) && *demux->psz_location != '\0')
        return VLC_EGENERIC;

    demux_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->client = ((void*)0);
    sys->es = ((void*)0);
    sys->caching = VLC_TICK_FROM_MS( var_InheritInteger(obj, "live-caching") );
    sys->start_time = vlc_tick_now();
    for (unsigned i = 0; i < 2; i++)
        sys->events[i] = ((void*)0);

    for (unsigned i = 0; i < 2; i++) {
        sys->events[i] = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
        if (sys->events[i] == ((void*)0))
            goto error;
    }

    hr = CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    if (unlikely(FAILED(hr))) {
        msg_Err(demux, "cannot initialize COM (error 0x%lX)", hr);
        goto error;
    }

    bool loopback;
    sys->client = GetClient(demux, &loopback);
    if (sys->client == ((void*)0)) {
        CoUninitialize();
        goto error;
    }

    sys->es = CreateES(demux, sys->client, loopback, sys->caching,
                       &sys->frame_size);
    if (sys->es == ((void*)0))
        goto error;

    hr = IAudioClient_SetEventHandle(sys->client, sys->events[1]);
    if (FAILED(hr)) {
        msg_Err(demux, "cannot set event handle (error 0x%lX)", hr);
        goto error;
    }

    demux->p_sys = sys;

    sys->ready = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
    if (sys->ready == ((void*)0))
        goto error;

    uintptr_t h = _beginthreadex(((void*)0), 0, Thread, demux, 0, ((void*)0));
    if (h != 0)
        WaitForSingleObject(sys->ready, INFINITE);
    CloseHandle(sys->ready);

    sys->thread = (HANDLE)h;
    if (sys->thread == ((void*)0))
        goto error;
    CoUninitialize();

    demux->pf_demux = ((void*)0);
    demux->pf_control = Control;
    return VLC_SUCCESS;

error:
    if (sys->es != ((void*)0))
        es_out_Del(demux->out, sys->es);
    if (sys->client != ((void*)0))
    {
        IAudioClient_Release(sys->client);
        CoUninitialize();
    }
    for (unsigned i = 0; i < 2; i++)
        if (sys->events[i] != ((void*)0))
            CloseHandle(sys->events[i]);
    return VLC_ENOMEM;
}
