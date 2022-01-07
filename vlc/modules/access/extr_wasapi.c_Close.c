
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_4__ {int * events; int client; int es; int thread; } ;
typedef TYPE_2__ demux_sys_t ;
typedef int HRESULT ;


 int COINIT_MULTITHREADED ;
 int CloseHandle (int ) ;
 int CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 int IAudioClient_Release (int ) ;
 int INFINITE ;
 int SUCCEEDED (int ) ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int assert (int ) ;
 int es_out_Del (int ,int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;
    HRESULT hr;

    hr = CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    assert(SUCCEEDED(hr));

    SetEvent(sys->events[0]);
    WaitForSingleObject(sys->thread, INFINITE);
    CloseHandle(sys->thread);

    es_out_Del(demux->out, sys->es);
    IAudioClient_Release(sys->client);
    CoUninitialize();
    for (unsigned i = 0; i < 2; i++)
        CloseHandle(sys->events[i]);
}
