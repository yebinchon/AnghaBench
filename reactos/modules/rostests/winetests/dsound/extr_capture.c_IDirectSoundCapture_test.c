
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dsccaps ;
struct TYPE_5__ {int dwSize; } ;
typedef int LPVOID ;
typedef int * LPDIRECTSOUNDCAPTURE ;
typedef int LPCGUID ;
typedef int IUnknown ;
typedef int IDirectSoundCapture ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DSCCAPS ;
typedef scalar_t__ BOOL ;


 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_ALREADYINITIALIZED ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DSERR_UNINITIALIZED ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FALSE ;
 scalar_t__ IDirectSoundCapture_GetCaps (int *,TYPE_1__*) ;
 scalar_t__ IDirectSoundCapture_Initialize (int *,int ) ;
 scalar_t__ IDirectSoundCapture_QueryInterface (int *,int *,int *) ;
 int IDirectSoundCapture_Release (int *) ;
 scalar_t__ IDirectSound_GetCaps (int *,TYPE_1__*) ;
 int IID_IDirectSoundCapture ;
 int IID_IUnknown ;
 int ZeroMemory (TYPE_1__*,int) ;
 int ok (int,char*,int) ;
 int trace (char*) ;

__attribute__((used)) static void IDirectSoundCapture_test(LPDIRECTSOUNDCAPTURE dsco,
                                     BOOL initialized, LPCGUID lpGuid)
{
    HRESULT rc;
    DSCCAPS dsccaps;
    int ref;
    IUnknown * unknown;
    IDirectSoundCapture * dsc;


    rc=IDirectSoundCapture_QueryInterface(dsco, &IID_IUnknown,
                                          (LPVOID*)&unknown);
    ok(rc==DS_OK, "IDirectSoundCapture_QueryInterface(IID_IUnknown) "
       "failed: %08x\n", rc);
    if (rc==DS_OK)
        IDirectSoundCapture_Release(unknown);

    rc=IDirectSoundCapture_QueryInterface(dsco, &IID_IDirectSoundCapture,
                                          (LPVOID*)&dsc);
    ok(rc==DS_OK, "IDirectSoundCapture_QueryInterface(IID_IDirectSoundCapture) "
       "failed: %08x\n", rc);
    if (rc==DS_OK)
        IDirectSoundCapture_Release(dsc);

    if (initialized == FALSE) {

        rc=IDirectSoundCapture_GetCaps(dsco,0);
        ok(rc==DSERR_UNINITIALIZED||rc==E_INVALIDARG,
           "IDirectSoundCapture_GetCaps(NULL) should have returned "
           "DSERR_UNINITIALIZED or E_INVALIDARG, returned: %08x\n", rc);

        rc=IDirectSoundCapture_GetCaps(dsco, &dsccaps);
        ok(rc==DSERR_UNINITIALIZED,"IDirectSoundCapture_GetCaps() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=IDirectSoundCapture_Initialize(dsco, lpGuid);
        ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||
           rc==E_FAIL||rc==E_INVALIDARG,
           "IDirectSoundCapture_Initialize() failed: %08x\n", rc);
        if (rc==DSERR_NODRIVER||rc==E_INVALIDARG) {
            trace("  No Driver\n");
            goto EXIT;
        } else if (rc==E_FAIL) {
            trace("  No Device\n");
            goto EXIT;
        } else if (rc==DSERR_ALLOCATED) {
            trace("  Already In Use\n");
            goto EXIT;
        }
    }

    rc=IDirectSoundCapture_Initialize(dsco, lpGuid);
    ok(rc==DSERR_ALREADYINITIALIZED, "IDirectSoundCapture_Initialize() "
       "should have returned DSERR_ALREADYINITIALIZED: %08x\n", rc);


    rc=IDirectSoundCapture_GetCaps(dsco, 0);
    ok(rc==DSERR_INVALIDPARAM, "IDirectSoundCapture_GetCaps(NULL) "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    ZeroMemory(&dsccaps, sizeof(dsccaps));


    rc=IDirectSound_GetCaps(dsco, &dsccaps);
    ok(rc==DSERR_INVALIDPARAM, "IDirectSound_GetCaps() "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    dsccaps.dwSize=sizeof(dsccaps);


    rc=IDirectSoundCapture_GetCaps(dsco, &dsccaps);
    ok(rc==DS_OK, "IDirectSoundCapture_GetCaps() failed: %08x\n", rc);

EXIT:
    ref=IDirectSoundCapture_Release(dsco);
    ok(ref==0, "IDirectSoundCapture_Release() has %d references, "
       "should have 0\n", ref);
}
