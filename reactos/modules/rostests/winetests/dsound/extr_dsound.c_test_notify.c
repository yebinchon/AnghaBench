
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPHANDLE ;
typedef int LPDIRECTSOUNDBUFFER ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ DS_OK ;
 int FALSE ;
 scalar_t__ IDirectSoundBuffer_Play (int ,int ,int ,int ) ;
 scalar_t__ IDirectSoundBuffer_SetCurrentPosition (int ,int ) ;
 scalar_t__ IDirectSoundBuffer_Stop (int ) ;
 scalar_t__ WaitForMultipleObjects (scalar_t__,int ,int ,int ) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static HRESULT test_notify(LPDIRECTSOUNDBUFFER dsb,
                           DWORD count, LPHANDLE event,
                           DWORD expected)
{
    HRESULT rc;
    DWORD ret;

    rc=IDirectSoundBuffer_SetCurrentPosition(dsb,0);
    ok(rc==DS_OK,
       "IDirectSoundBuffer_SetCurrentPosition failed %08x\n",rc);
    if(rc!=DS_OK)
        return rc;

    rc=IDirectSoundBuffer_Play(dsb,0,0,0);
    ok(rc==DS_OK,"IDirectSoundBuffer_Play failed %08x\n",rc);
    if(rc!=DS_OK)
        return rc;

    rc=IDirectSoundBuffer_Stop(dsb);
    ok(rc==DS_OK,"IDirectSoundBuffer_Stop failed %08x\n",rc);
    if(rc!=DS_OK)
        return rc;

    ret=WaitForMultipleObjects(count,event,FALSE,0);
    ok(ret==expected,"expected %d. got %d\n",expected,ret);
    return rc;
}
