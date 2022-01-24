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
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  KFLOATING_SAVE ;
typedef  int /*<<< orphan*/  FLOAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 double* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (double*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  SRC_SINC_FASTEST ; 
 int STATUS_INSUFFICIENT_RESOURCES ; 
 int STATUS_SUCCESS ; 
 int STATUS_UNSUCCESSFUL ; 
 int FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (double*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (double*,short*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,double*,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (short*,double*,int) ; 

NTSTATUS
FUNC17(
    PUCHAR Buffer,
    ULONG BufferLength,
    ULONG OldRate,
    ULONG NewRate,
    ULONG BytesPerSample,
    ULONG NumChannels,
    PVOID * Result,
    PULONG ResultLength)
{
    KFLOATING_SAVE FloatSave;
    NTSTATUS Status;
    ULONG Index;
    SRC_STATE * State;
    SRC_DATA Data;
    PUCHAR ResultOut;
    int error;
    PFLOAT FloatIn, FloatOut;
    ULONG NumSamples;
    ULONG NewSamples;

    FUNC1("PerformSampleRateConversion OldRate %u NewRate %u BytesPerSample %u NumChannels %u Irql %u\n", OldRate, NewRate, BytesPerSample, NumChannels, FUNC5());

    FUNC0(BytesPerSample == 1 || BytesPerSample == 2 || BytesPerSample == 4);

    /* first acquire float save context */
    Status = FUNC7(&FloatSave);

    if (!FUNC8(Status))
    {
        FUNC2("KeSaveFloatingPointState failed with %x\n", Status);
        return Status;
    }

    NumSamples = BufferLength / (BytesPerSample * NumChannels);

    FloatIn = FUNC3(NonPagedPool, NumSamples * NumChannels * sizeof(FLOAT));
    if (!FloatIn)
    {
        FUNC6(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    NewSamples = ((((ULONG64)NumSamples * NewRate) + (OldRate / 2)) / OldRate) + 2;

    FloatOut = FUNC3(NonPagedPool, NewSamples * NumChannels * sizeof(FLOAT));
    if (!FloatOut)
    {
        FUNC4(FloatIn);
        FUNC6(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    ResultOut = FUNC3(NonPagedPool, NewSamples * NumChannels * BytesPerSample);
    if (!ResultOut)
    {
        FUNC4(FloatIn);
        FUNC4(FloatOut);
        FUNC6(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    State = FUNC14(SRC_SINC_FASTEST, NumChannels, &error);
    if (!State)
    {
        FUNC2("src_new failed with %x\n", error);
        FUNC6(&FloatSave);
        FUNC4(FloatIn);
        FUNC4(FloatOut);
        FUNC4(ResultOut);
        return STATUS_UNSUCCESSFUL;
    }

    /* fixme use asm */
    if (BytesPerSample == 1)
    {
        for(Index = 0; Index < NumSamples * NumChannels; Index++)
            FloatIn[Index] = (float)(Buffer[Index] / (1.0 * 0x80));
    }
    else if (BytesPerSample == 2)
    {
        FUNC16((short*)Buffer, FloatIn, NumSamples * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        FUNC13((int*)Buffer, FloatIn, NumSamples * NumChannels);
    }

    Data.data_in = FloatIn;
    Data.data_out = FloatOut;
    Data.input_frames = NumSamples;
    Data.output_frames = NewSamples;
    Data.src_ratio = (double)NewRate / (double)OldRate;

    error = FUNC15(State, &Data);
    if (error)
    {
        FUNC2("src_process failed with %x\n", error);
        FUNC6(&FloatSave);
        FUNC4(FloatIn);
        FUNC4(FloatOut);
        FUNC4(ResultOut);
        return STATUS_UNSUCCESSFUL;
    }

    if (BytesPerSample == 1)
    {
        /* FIXME perform over/under clipping */

        for(Index = 0; Index < Data.output_frames_gen * NumChannels; Index++)
            ResultOut[Index] = (FUNC9(FloatOut[Index]) >> 24);
    }
    else if (BytesPerSample == 2)
    {
        PUSHORT Res = (PUSHORT)ResultOut;

        FUNC12(FloatOut, (short*)Res, Data.output_frames_gen * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        PULONG Res = (PULONG)ResultOut;

        FUNC11(FloatOut, (int*)Res, Data.output_frames_gen * NumChannels);
    }


    *Result = ResultOut;
    *ResultLength = Data.output_frames_gen * BytesPerSample * NumChannels;
    FUNC4(FloatIn);
    FUNC4(FloatOut);
    FUNC10(State);
    FUNC6(&FloatSave);
    return STATUS_SUCCESS;
}