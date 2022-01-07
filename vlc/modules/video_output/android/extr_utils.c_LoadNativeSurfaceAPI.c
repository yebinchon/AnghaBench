
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * setBuffersGeometry; int unlockAndPost; int winLock; } ;
struct TYPE_5__ {TYPE_1__ anw_api; int pf_winRelease; int pf_winFromSurface; } ;
typedef TYPE_2__ AWindowHandler ;


 int NativeSurface_fromSurface ;
 int NativeSurface_lock ;
 int NativeSurface_release ;
 int NativeSurface_unlockAndPost ;

__attribute__((used)) static void
LoadNativeSurfaceAPI(AWindowHandler *p_awh)
{
    p_awh->pf_winFromSurface = NativeSurface_fromSurface;
    p_awh->pf_winRelease = NativeSurface_release;
    p_awh->anw_api.winLock = NativeSurface_lock;
    p_awh->anw_api.unlockAndPost = NativeSurface_unlockAndPost;
    p_awh->anw_api.setBuffersGeometry = ((void*)0);
}
