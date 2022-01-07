
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_5__ {int HighPart; int LowPart; } ;
struct TYPE_6__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_7__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_3__ FILETIME ;



__attribute__((used)) static ULONGLONG get_longlong_time(FILETIME *time)
{
    ULARGE_INTEGER uli;
    uli.u.LowPart = time->dwLowDateTime;
    uli.u.HighPart = time->dwHighDateTime;
    return uli.QuadPart;
}
