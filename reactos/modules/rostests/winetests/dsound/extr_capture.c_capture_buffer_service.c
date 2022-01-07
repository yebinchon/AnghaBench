
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int size; int buffer_size; int dscbo; } ;
typedef TYPE_1__ capture_state_t ;
typedef int LPVOID ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundCaptureBuffer_GetCurrentPosition (int ,int *,int *) ;
 scalar_t__ IDirectSoundCaptureBuffer_Lock (int ,int,int,int *,int *,int *,int *,int ) ;
 scalar_t__ IDirectSoundCaptureBuffer_Unlock (int ,int ,int ,int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static int capture_buffer_service(capture_state_t* state)
{
    HRESULT rc;
    LPVOID ptr1,ptr2;
    DWORD len1,len2;
    DWORD capture_pos,read_pos;

    rc=IDirectSoundCaptureBuffer_GetCurrentPosition(state->dscbo,&capture_pos,
                                                    &read_pos);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_GetCurrentPosition() failed: %08x\n", rc);
    if (rc!=DS_OK)
 return 0;

    rc=IDirectSoundCaptureBuffer_Lock(state->dscbo,state->offset,state->size,
                                      &ptr1,&len1,&ptr2,&len2,0);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Lock() failed: %08x\n", rc);
    if (rc!=DS_OK)
 return 0;

    rc=IDirectSoundCaptureBuffer_Unlock(state->dscbo,ptr1,len1,ptr2,len2);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Unlock() failed: %08x\n", rc);
    if (rc!=DS_OK)
 return 0;

    state->offset = (state->offset + state->size) % state->buffer_size;

    return 1;
}
