
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct _utimbuf {scalar_t__ actime; scalar_t__ modtime; } ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ ioinfo ;
typedef int ULONG ;
typedef int LARGE_INTEGER ;
typedef scalar_t__ FILETIME ;


 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int RtlSecondsSince1970ToTime (int ,int *) ;
 int SetFileTime (scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 int _dosmaperr (int ) ;
 int _time (scalar_t__*) ;
 TYPE_1__* get_ioinfo (int) ;
 int release_ioinfo (TYPE_1__*) ;

int
_futime(int fd, struct _utimbuf *filetime)
{
    ioinfo *info = get_ioinfo(fd);
    FILETIME at, wt;

    if (info->handle == INVALID_HANDLE_VALUE)
    {
        release_ioinfo(info);
        return -1;
    }

    if (!filetime)
    {
        time_t currTime;
        _time(&currTime);
        RtlSecondsSince1970ToTime((ULONG)currTime,
                                  (LARGE_INTEGER *)&at);
        wt = at;
    }
    else
    {
        RtlSecondsSince1970ToTime((ULONG)filetime->actime,
                                  (LARGE_INTEGER *)&at);
        if (filetime->actime == filetime->modtime)
        {
            wt = at;
        }
        else
        {
            RtlSecondsSince1970ToTime((ULONG)filetime->modtime,
                                      (LARGE_INTEGER *)&wt);
        }
    }

    if (!SetFileTime(info->handle, ((void*)0), &at, &wt))
    {
        release_ioinfo(info);
        _dosmaperr(GetLastError());
        return -1 ;
    }
    release_ioinfo(info);
    return 0;
}
