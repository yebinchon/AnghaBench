
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG64 ;
typedef int ULONG ;
struct TYPE_3__ {double* data_in; double* data_out; int input_frames; int output_frames; double src_ratio; int output_frames_gen; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_DATA ;
typedef double* PVOID ;
typedef scalar_t__ PUSHORT ;
typedef int* PULONG ;
typedef double* PUCHAR ;
typedef double* PFLOAT ;
typedef int NTSTATUS ;
typedef int KFLOATING_SAVE ;
typedef int FLOAT ;


 int ASSERT (int) ;
 int DPRINT (char*,int,int,int,int,int ) ;
 int DPRINT1 (char*,int) ;
 double* ExAllocatePool (int ,int) ;
 int ExFreePool (double*) ;
 int KeGetCurrentIrql () ;
 int KeRestoreFloatingPointState (int *) ;
 int KeSaveFloatingPointState (int *) ;
 int NT_SUCCESS (int) ;
 int NonPagedPool ;
 int SRC_SINC_FASTEST ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int lrintf (double) ;
 int src_delete (int *) ;
 int src_float_to_int_array (double*,int*,int) ;
 int src_float_to_short_array (double*,short*,int) ;
 int src_int_to_float_array (int*,double*,int) ;
 int * src_new (int ,int,int*) ;
 int src_process (int *,TYPE_1__*) ;
 int src_short_to_float_array (short*,double*,int) ;

NTSTATUS
PerformSampleRateConversion(
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

    DPRINT("PerformSampleRateConversion OldRate %u NewRate %u BytesPerSample %u NumChannels %u Irql %u\n", OldRate, NewRate, BytesPerSample, NumChannels, KeGetCurrentIrql());

    ASSERT(BytesPerSample == 1 || BytesPerSample == 2 || BytesPerSample == 4);


    Status = KeSaveFloatingPointState(&FloatSave);

    if (!NT_SUCCESS(Status))
    {
        DPRINT1("KeSaveFloatingPointState failed with %x\n", Status);
        return Status;
    }

    NumSamples = BufferLength / (BytesPerSample * NumChannels);

    FloatIn = ExAllocatePool(NonPagedPool, NumSamples * NumChannels * sizeof(FLOAT));
    if (!FloatIn)
    {
        KeRestoreFloatingPointState(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    NewSamples = ((((ULONG64)NumSamples * NewRate) + (OldRate / 2)) / OldRate) + 2;

    FloatOut = ExAllocatePool(NonPagedPool, NewSamples * NumChannels * sizeof(FLOAT));
    if (!FloatOut)
    {
        ExFreePool(FloatIn);
        KeRestoreFloatingPointState(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    ResultOut = ExAllocatePool(NonPagedPool, NewSamples * NumChannels * BytesPerSample);
    if (!ResultOut)
    {
        ExFreePool(FloatIn);
        ExFreePool(FloatOut);
        KeRestoreFloatingPointState(&FloatSave);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    State = src_new(SRC_SINC_FASTEST, NumChannels, &error);
    if (!State)
    {
        DPRINT1("src_new failed with %x\n", error);
        KeRestoreFloatingPointState(&FloatSave);
        ExFreePool(FloatIn);
        ExFreePool(FloatOut);
        ExFreePool(ResultOut);
        return STATUS_UNSUCCESSFUL;
    }


    if (BytesPerSample == 1)
    {
        for(Index = 0; Index < NumSamples * NumChannels; Index++)
            FloatIn[Index] = (float)(Buffer[Index] / (1.0 * 0x80));
    }
    else if (BytesPerSample == 2)
    {
        src_short_to_float_array((short*)Buffer, FloatIn, NumSamples * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        src_int_to_float_array((int*)Buffer, FloatIn, NumSamples * NumChannels);
    }

    Data.data_in = FloatIn;
    Data.data_out = FloatOut;
    Data.input_frames = NumSamples;
    Data.output_frames = NewSamples;
    Data.src_ratio = (double)NewRate / (double)OldRate;

    error = src_process(State, &Data);
    if (error)
    {
        DPRINT1("src_process failed with %x\n", error);
        KeRestoreFloatingPointState(&FloatSave);
        ExFreePool(FloatIn);
        ExFreePool(FloatOut);
        ExFreePool(ResultOut);
        return STATUS_UNSUCCESSFUL;
    }

    if (BytesPerSample == 1)
    {


        for(Index = 0; Index < Data.output_frames_gen * NumChannels; Index++)
            ResultOut[Index] = (lrintf(FloatOut[Index]) >> 24);
    }
    else if (BytesPerSample == 2)
    {
        PUSHORT Res = (PUSHORT)ResultOut;

        src_float_to_short_array(FloatOut, (short*)Res, Data.output_frames_gen * NumChannels);
    }
    else if (BytesPerSample == 4)
    {
        PULONG Res = (PULONG)ResultOut;

        src_float_to_int_array(FloatOut, (int*)Res, Data.output_frames_gen * NumChannels);
    }


    *Result = ResultOut;
    *ResultLength = Data.output_frames_gen * BytesPerSample * NumChannels;
    ExFreePool(FloatIn);
    ExFreePool(FloatOut);
    src_delete(State);
    KeRestoreFloatingPointState(&FloatSave);
    return STATUS_SUCCESS;
}
