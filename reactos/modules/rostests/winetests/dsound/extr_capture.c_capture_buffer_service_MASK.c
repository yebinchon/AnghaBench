#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int offset; int size; int buffer_size; int /*<<< orphan*/  dscbo; } ;
typedef  TYPE_1__ capture_state_t ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(capture_state_t* state)
{
    HRESULT rc;
    LPVOID ptr1,ptr2;
    DWORD len1,len2;
    DWORD capture_pos,read_pos;

    rc=FUNC0(state->dscbo,&capture_pos,
                                                    &read_pos);
    FUNC3(rc==DS_OK,"IDirectSoundCaptureBuffer_GetCurrentPosition() failed: %08x\n", rc);
    if (rc!=DS_OK)
	return 0;

    rc=FUNC1(state->dscbo,state->offset,state->size,
                                      &ptr1,&len1,&ptr2,&len2,0);
    FUNC3(rc==DS_OK,"IDirectSoundCaptureBuffer_Lock() failed: %08x\n", rc);
    if (rc!=DS_OK)
	return 0;

    rc=FUNC2(state->dscbo,ptr1,len1,ptr2,len2);
    FUNC3(rc==DS_OK,"IDirectSoundCaptureBuffer_Unlock() failed: %08x\n", rc);
    if (rc!=DS_OK)
	return 0;

    state->offset = (state->offset + state->size) % state->buffer_size;

    return 1;
}