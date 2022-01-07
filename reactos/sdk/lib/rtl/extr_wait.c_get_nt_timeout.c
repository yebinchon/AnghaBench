
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__* PLARGE_INTEGER ;


 scalar_t__ INFINITE ;

__attribute__((used)) static inline PLARGE_INTEGER get_nt_timeout( PLARGE_INTEGER pTime, ULONG timeout )
{
    if (timeout == INFINITE) return ((void*)0);
    pTime->QuadPart = (ULONGLONG)timeout * -10000;
    return pTime;
}
