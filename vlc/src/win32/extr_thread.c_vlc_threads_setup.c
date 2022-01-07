
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int ABOVE_NORMAL_PRIORITY_CLASS ;
 int EnterCriticalSection (int *) ;
 int GetCurrentProcess () ;
 int HIGH_PRIORITY_CLASS ;
 int LeaveCriticalSection (int *) ;
 int SelectClockSource (int *) ;
 scalar_t__ SetPriorityClass (int ,int ) ;
 int * VLC_OBJECT (int *) ;
 int abort () ;
 int assert (int) ;
 scalar_t__ mdate_default ;
 scalar_t__ mdate_selected ;
 int msg_Dbg (int *,char*) ;
 int setup_lock ;
 scalar_t__ var_InheritBool (int *,char*) ;

void vlc_threads_setup(libvlc_int_t *vlc)
{
    EnterCriticalSection(&setup_lock);
    if (mdate_selected != mdate_default)
    {
        LeaveCriticalSection(&setup_lock);
        return;
    }

    if (!SelectClockSource((vlc != ((void*)0)) ? VLC_OBJECT(vlc) : ((void*)0)))
        abort();
    assert(mdate_selected != mdate_default);






    if (var_InheritBool(vlc, "high-priority"))
    {
        if (SetPriorityClass(GetCurrentProcess(), 0x00008000)
         || SetPriorityClass(GetCurrentProcess(), HIGH_PRIORITY_CLASS))
            msg_Dbg(vlc, "raised process priority");
        else
            msg_Dbg(vlc, "could not raise process priority");
    }

    LeaveCriticalSection(&setup_lock);
}
