
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef int LPCGUID ;
typedef int IUnknown ;
typedef int IDirectSoundFullDuplex ;
typedef int IDirectSoundCapture ;
typedef int IDirectSound8 ;
typedef int IDirectSound ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int DS_OK ;
 int E_NOINTERFACE ;
 int IDirectSound8_QueryInterface (int *,int *,int *) ;
 int IDirectSound8_Release (int *) ;
 int IDirectSoundCapture_Release (int *) ;
 int IDirectSoundFullDuplex_QueryInterface (int *,int *,int *) ;
 int IDirectSoundFullDuplex_Release (int *) ;
 int IDirectSound_Release (int *) ;
 int IID_IDirectSound ;
 int IID_IDirectSound8 ;
 int IID_IDirectSoundCapture ;
 int IID_IDirectSoundFullDuplex ;
 int IID_IUnknown ;
 int ok (int,char*,...) ;

__attribute__((used)) static void IDirectSoundFullDuplex_test(LPDIRECTSOUNDFULLDUPLEX dsfdo,
                                        BOOL initialized, LPCGUID lpGuidCapture,
                                        LPCGUID lpGuidRender)
{
    HRESULT rc;
    int ref;
    IUnknown * unknown;
    IDirectSound * ds;
    IDirectSound8 * ds8;
    IDirectSoundCapture * dsc;
    IDirectSoundFullDuplex * dsfd;


    rc=IDirectSoundFullDuplex_QueryInterface(dsfdo,&IID_IUnknown,(LPVOID*)&unknown);
    ok(rc==DS_OK,"IDirectSoundFullDuplex_QueryInterface(IID_IUnknown) failed: %08x\n", rc);
    if (rc==DS_OK) {
        ref=IDirectSoundFullDuplex_Release(unknown);
        ok(ref==0, "IDirectSoundFullDuplex_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=IDirectSoundFullDuplex_QueryInterface(dsfdo,&IID_IDirectSound,(LPVOID*)&ds);
    ok(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound) failed: %08x\n", rc);
    if (rc==DS_OK) {
        ref=IDirectSound_Release(ds);
        ok(ref==0, "IDirectSound_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=IDirectSoundFullDuplex_QueryInterface(dsfdo,&IID_IDirectSound8,(LPVOID*)&ds8);
    ok(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound8) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        IDirectSoundFullDuplex * dsfd1;
        rc=IDirectSound8_QueryInterface(ds8,&IID_IDirectSoundFullDuplex,(LPVOID*)&dsfd1);
        ok(rc==DS_OK,"IDirectSound8_QueryInterface(IID_IDirectSoundFullDuplex) "
           "failed: %08x\n",rc);
        if (rc==DS_OK) {
            ref=IDirectSoundFullDuplex_Release(dsfd1);
            ok(ref==1, "IDirectSoundFullDuplex_Release() has %d references, "
               "should have 1\n", ref);
        }
        ref=IDirectSound8_Release(ds8);
        ok(ref==0, "IDirectSound8_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=IDirectSoundFullDuplex_QueryInterface(dsfdo,&IID_IDirectSoundCapture,(LPVOID*)&dsc);
    ok(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundCapture) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        ref=IDirectSoundCapture_Release(dsc);
        ok(ref==0, "IDirectSoundCapture_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=IDirectSoundFullDuplex_QueryInterface(dsfdo,&IID_IDirectSoundFullDuplex,(LPVOID*)&dsfd);
    ok(rc==DS_OK,"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundFullDuplex) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        ok(dsfdo==dsfd, "different interfaces\n");
        ref=IDirectSound8_Release(dsfd);
        ok(ref==1, "IDirectSoundFullDuplex_Release() has %d references, should have 1\n", ref);
    }

    ref=IDirectSoundFullDuplex_Release(dsfdo);
    ok(ref==0, "IDirectSoundFullDuplex_Release() has %d references, "
       "should have 0\n", ref);
}
