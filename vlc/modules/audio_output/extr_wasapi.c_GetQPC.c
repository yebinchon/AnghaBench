
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int msftime_t ;
struct TYPE_6__ {int quot; int rem; } ;
typedef TYPE_1__ lldiv_t ;
struct TYPE_8__ {int QuadPart; } ;
struct TYPE_7__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_2__*) ;
 int abort () ;
 TYPE_4__ freq ;
 TYPE_1__ lldiv (int ,int) ;

__attribute__((used)) static msftime_t GetQPC(void)
{
    LARGE_INTEGER counter;

    if (!QueryPerformanceCounter(&counter))
        abort();

    lldiv_t d = lldiv(counter.QuadPart, freq.QuadPart);
    return (d.quot * 10000000) + ((d.rem * 10000000) / freq.QuadPart);
}
