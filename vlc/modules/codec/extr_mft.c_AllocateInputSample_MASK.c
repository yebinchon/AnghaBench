#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* fptr_MFCreateMemoryBuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int /*<<< orphan*/  (* fptr_MFCreateSample ) (int /*<<< orphan*/ **) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  mft; TYPE_4__ mf_handle; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  cbSize; } ;
typedef  TYPE_3__ MFT_INPUT_STREAM_INFO ;
typedef  TYPE_4__ MFHandle ;
typedef  int /*<<< orphan*/  IMFSample ;
typedef  int /*<<< orphan*/  IMFMediaBuffer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC9(decoder_t *p_dec, DWORD stream_id, IMFSample** result, DWORD size)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    MFHandle *mf = &p_sys->mf_handle;
    HRESULT hr;

    *result = NULL;

    IMFSample *input_sample = NULL;

    MFT_INPUT_STREAM_INFO input_info;
    hr = FUNC4(p_sys->mft, stream_id, &input_info);
    if (FUNC0(hr))
        goto error;

    hr = mf->fptr_MFCreateSample(&input_sample);
    if (FUNC0(hr))
        goto error;

    IMFMediaBuffer *input_media_buffer = NULL;
    DWORD allocation_size = FUNC5(input_info.cbSize, size);
    hr = mf->fptr_MFCreateMemoryBuffer(allocation_size, &input_media_buffer);
    if (FUNC0(hr))
        goto error;

    hr = FUNC2(input_sample, input_media_buffer);
    FUNC1(input_media_buffer);
    if (FUNC0(hr))
        goto error;

    *result = input_sample;

    return VLC_SUCCESS;

error:
    FUNC6(p_dec, "Error in AllocateInputSample()");
    if (input_sample)
        FUNC3(input_sample);
    if (input_media_buffer)
        FUNC1(input_media_buffer);
    return VLC_EGENERIC;
}