
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwDriver; } ;
typedef TYPE_1__* PACMDRVSTREAMINSTANCE ;
typedef int LRESULT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int MMSYSERR_NOERROR ;

__attribute__((used)) static LRESULT G711_StreamClose(PACMDRVSTREAMINSTANCE adsi)
{
    HeapFree(GetProcessHeap(), 0, (void*)adsi->dwDriver);
    return MMSYSERR_NOERROR;
}
