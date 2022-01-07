
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_4__ {int const* lpVtbl; } ;
struct TYPE_5__ {int refCount; int dwCapabilities; int llStop; int llDuration; double dRate; int crst; int timeformat; scalar_t__ llCurrent; scalar_t__ fnChangeStart; scalar_t__ fnChangeStop; scalar_t__ fnChangeRate; TYPE_1__ IMediaSeeking_iface; } ;
typedef scalar_t__ SourceSeeking_ChangeStop ;
typedef scalar_t__ SourceSeeking_ChangeStart ;
typedef scalar_t__ SourceSeeking_ChangeRate ;
typedef TYPE_2__ SourceSeeking ;
typedef int PCRITICAL_SECTION ;
typedef int IMediaSeekingVtbl ;
typedef int HRESULT ;


 int AM_SEEKING_CanGetDuration ;
 int AM_SEEKING_CanGetStopPos ;
 int AM_SEEKING_CanSeekAbsolute ;
 int AM_SEEKING_CanSeekBackwards ;
 int AM_SEEKING_CanSeekForwards ;
 int S_OK ;
 int TIME_FORMAT_MEDIA_TIME ;
 int assert (int) ;

HRESULT SourceSeeking_Init(SourceSeeking *pSeeking, const IMediaSeekingVtbl *Vtbl, SourceSeeking_ChangeStop fnChangeStop, SourceSeeking_ChangeStart fnChangeStart, SourceSeeking_ChangeRate fnChangeRate, PCRITICAL_SECTION crit_sect)
{
    assert(fnChangeStop && fnChangeStart && fnChangeRate);

    pSeeking->IMediaSeeking_iface.lpVtbl = Vtbl;
    pSeeking->refCount = 1;
    pSeeking->fnChangeRate = fnChangeRate;
    pSeeking->fnChangeStop = fnChangeStop;
    pSeeking->fnChangeStart = fnChangeStart;
    pSeeking->dwCapabilities = AM_SEEKING_CanSeekForwards |
        AM_SEEKING_CanSeekBackwards |
        AM_SEEKING_CanSeekAbsolute |
        AM_SEEKING_CanGetStopPos |
        AM_SEEKING_CanGetDuration;
    pSeeking->llCurrent = 0;
    pSeeking->llStop = ((ULONGLONG)0x80000000) << 32;
    pSeeking->llDuration = pSeeking->llStop;
    pSeeking->dRate = 1.0;
    pSeeking->timeformat = TIME_FORMAT_MEDIA_TIME;
    pSeeking->crst = crit_sect;
    return S_OK;
}
