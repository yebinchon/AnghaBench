
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {void* dwHighDateTime; void* dwLowDateTime; } ;
typedef TYPE_1__* LPFILETIME ;
typedef int LONGLONG ;
typedef void* DWORD ;


 int Int32x32To64 (int ,int) ;

void UnixTimeToFileTime(time_t t, LPFILETIME pft)
{



    LONGLONG ll;
    ll = Int32x32To64(t, 10000000) + 116444736000000000;
    pft->dwLowDateTime = (DWORD)ll;

    pft->dwHighDateTime = (DWORD)(ll >> 32);
}
