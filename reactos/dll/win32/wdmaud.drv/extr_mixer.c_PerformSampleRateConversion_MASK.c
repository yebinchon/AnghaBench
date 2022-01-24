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
typedef  int ULONG64 ;
typedef  int ULONG ;
struct TYPE_3__ {double* data_in; double* data_out; int input_frames; int output_frames; double src_ratio; int output_frames_gen; } ;
typedef  int /*<<< orphan*/  SRC_STATE ;
typedef  TYPE_1__ SRC_DATA ;
typedef  double* PVOID ;
typedef  scalar_t__ PUSHORT ;
typedef  int* PULONG ;
typedef  double* PUCHAR ;
typedef  double* PFLOAT ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 double* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  SRC_SINC_FASTEST ; 
 int FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (double*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (double*,short*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,double*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (short*,double*,int) ; 

DWORD
FUNC13(
    PUCHAR Buffer,
    ULONG BufferLength,
    ULONG OldRate,
    ULONG NewRate,
    ULONG BytesPerSample,
    ULONG NumChannels,
    PVOID * Result,
    PULONG ResultLength)
{
    ULONG Index;
    SRC_STATE * State;
    SRC_DATA Data;
    PUCHAR ResultOut;
    int error;
    PFLOAT FloatIn, FloatOut;
    ULONG NumSamples;
    ULONG NewSamples;

    //SND_TRACE(L"PerformSampleRateConversion OldRate %u NewRate %u BytesPerSample %u NumChannels %u\n", OldRate, NewRate, BytesPerSample, NumChannels);

    FUNC0(BytesPerSample == 1 || BytesPerSample == 2 || BytesPerSample == 4);

    NumSamples = BufferLength / (BytesPerSample * NumChannels);

    FloatIn = FUNC3(FUNC2(), 0, NumSamples * NumChannels * sizeof(FLOAT));
    if (!FloatIn)
    {
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    NewSamples = ((((ULONG64)NumSamples * NewRate) + (OldRate / 2)) / OldRate) + 2;

    FloatOut = FUNC3(FUNC2(), 0, NewSamples * NumChannels * sizeof(FLOAT));
    if (!FloatOut)
    {
        FUNC4(FUNC2(), 0,FloatIn);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    ResultOut = FUNC3(FUNC2(), 0, NewSamples * NumChannels * BytesPerSample);
    if (!ResultOut)
    {
        FUNC4(FUNC2(), 0,FloatIn);
        FUNC4(FUNC2(), 0,FloatOut);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    State = FUNC10(SRC_SINC_FASTEST, NumChannels, &error);
    if (!State)
    {
        FUNC4(FUNC2(), 0,FloatIn);
        FUNC4(FUNC2(), 0,FloatOut);
        FUNC4(FUNC2(), 0,ResultOut);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    /* fixme use asm */
    if (BytesPerSample == 1)
    {
        for(Index = 0; Index < NumSamples * NumChannels; Index++)
            FloatIn[Index] = (float)(Buffer[Index] / (1.0 * 0x80));
    }
    else if (BytesPerSample == 2)
    {
        FUNC12((short*)Buffer, FloatIn, NumSamples * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        FUNC9((int*)Buffer, FloatIn, NumSamples * NumChannels);
    }

    Data.data_in = FloatIn;
    Data.data_out = FloatOut;
    Data.input_frames = NumSamples;
    Data.output_frames = NewSamples;
    Data.src_ratio = (double)NewRate / (double)OldRate;

    error = FUNC11(State, &Data);
    if (error)
    {
        FUNC1("src_process failed with %x\n", error);
        FUNC4(FUNC2(), 0,FloatIn);
        FUNC4(FUNC2(), 0,FloatOut);
        FUNC4(FUNC2(), 0,ResultOut);
        return ERROR_INVALID_DATA;
    }

    if (BytesPerSample == 1)
    {
        /* FIXME perform over/under clipping */

        for(Index = 0; Index < Data.output_frames_gen * NumChannels; Index++)
            ResultOut[Index] = (FUNC5(FloatOut[Index]) >> 24);
    }
    else if (BytesPerSample == 2)
    {
        PUSHORT Res = (PUSHORT)ResultOut;

        FUNC8(FloatOut, (short*)Res, Data.output_frames_gen * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        PULONG Res = (PULONG)ResultOut;

        FUNC7(FloatOut, (int*)Res, Data.output_frames_gen * NumChannels);
    }


    *Result = ResultOut;
    *ResultLength = Data.output_frames_gen * BytesPerSample * NumChannels;
    FUNC4(FUNC2(), 0,FloatIn);
    FUNC4(FUNC2(), 0,FloatOut);
    FUNC6(State);
    return ERROR_SUCCESS;
}