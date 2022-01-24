#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDFULLDUPLEX ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDirectSoundFullDuplex ;
typedef  int /*<<< orphan*/  IDirectSoundCapture ;
typedef  int /*<<< orphan*/  IDirectSound8 ;
typedef  int /*<<< orphan*/  IDirectSound ;
typedef  int HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int DS_OK ; 
 int E_NOINTERFACE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int /*<<< orphan*/  IID_IDirectSoundCapture ; 
 int /*<<< orphan*/  IID_IDirectSoundFullDuplex ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(LPDIRECTSOUNDFULLDUPLEX dsfdo,
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

    /* Try to Query for objects */
    rc=FUNC3(dsfdo,&IID_IUnknown,(LPVOID*)&unknown);
    FUNC6(rc==DS_OK,"IDirectSoundFullDuplex_QueryInterface(IID_IUnknown) failed: %08x\n", rc);
    if (rc==DS_OK) {
        ref=FUNC4(unknown);
        FUNC6(ref==0, "IDirectSoundFullDuplex_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=FUNC3(dsfdo,&IID_IDirectSound,(LPVOID*)&ds);
    FUNC6(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound) failed: %08x\n", rc);
    if (rc==DS_OK) {
        ref=FUNC5(ds);
        FUNC6(ref==0, "IDirectSound_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=FUNC3(dsfdo,&IID_IDirectSound8,(LPVOID*)&ds8);
    FUNC6(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound8) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        IDirectSoundFullDuplex * dsfd1;
        rc=FUNC0(ds8,&IID_IDirectSoundFullDuplex,(LPVOID*)&dsfd1);
        FUNC6(rc==DS_OK,"IDirectSound8_QueryInterface(IID_IDirectSoundFullDuplex) "
           "failed: %08x\n",rc);
        if (rc==DS_OK) {
            ref=FUNC4(dsfd1);
            FUNC6(ref==1, "IDirectSoundFullDuplex_Release() has %d references, "
               "should have 1\n", ref);
        }
        ref=FUNC1(ds8);
        FUNC6(ref==0, "IDirectSound8_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=FUNC3(dsfdo,&IID_IDirectSoundCapture,(LPVOID*)&dsc);
    FUNC6(rc==(initialized?DS_OK:E_NOINTERFACE),"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundCapture) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        ref=FUNC2(dsc);
        FUNC6(ref==0, "IDirectSoundCapture_Release() has %d references, "
           "should have 0\n", ref);
    }

    rc=FUNC3(dsfdo,&IID_IDirectSoundFullDuplex,(LPVOID*)&dsfd);
    FUNC6(rc==DS_OK,"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundFullDuplex) "
       "failed: %08x\n",rc);
    if (rc==DS_OK) {
        FUNC6(dsfdo==dsfd, "different interfaces\n");
        ref=FUNC1(dsfd);
        FUNC6(ref==1, "IDirectSoundFullDuplex_Release() has %d references, should have 1\n", ref);
    }

    ref=FUNC4(dsfdo);
    FUNC6(ref==0, "IDirectSoundFullDuplex_Release() has %d references, "
       "should have 0\n", ref);
}