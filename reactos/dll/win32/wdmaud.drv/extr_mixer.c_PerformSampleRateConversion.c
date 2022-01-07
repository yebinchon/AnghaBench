
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
typedef int FLOAT ;
typedef int DWORD ;


 int ASSERT (int) ;
 int DPRINT1 (char*,int) ;
 int ERROR_INVALID_DATA ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int GetProcessHeap () ;
 double* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,double*) ;
 int SRC_SINC_FASTEST ;
 int lrintf (double) ;
 int src_delete (int *) ;
 int src_float_to_int_array (double*,int*,int) ;
 int src_float_to_short_array (double*,short*,int) ;
 int src_int_to_float_array (int*,double*,int) ;
 int * src_new (int ,int,int*) ;
 int src_process (int *,TYPE_1__*) ;
 int src_short_to_float_array (short*,double*,int) ;

DWORD
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
    ULONG Index;
    SRC_STATE * State;
    SRC_DATA Data;
    PUCHAR ResultOut;
    int error;
    PFLOAT FloatIn, FloatOut;
    ULONG NumSamples;
    ULONG NewSamples;



    ASSERT(BytesPerSample == 1 || BytesPerSample == 2 || BytesPerSample == 4);

    NumSamples = BufferLength / (BytesPerSample * NumChannels);

    FloatIn = HeapAlloc(GetProcessHeap(), 0, NumSamples * NumChannels * sizeof(FLOAT));
    if (!FloatIn)
    {
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    NewSamples = ((((ULONG64)NumSamples * NewRate) + (OldRate / 2)) / OldRate) + 2;

    FloatOut = HeapAlloc(GetProcessHeap(), 0, NewSamples * NumChannels * sizeof(FLOAT));
    if (!FloatOut)
    {
        HeapFree(GetProcessHeap(), 0,FloatIn);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    ResultOut = HeapAlloc(GetProcessHeap(), 0, NewSamples * NumChannels * BytesPerSample);
    if (!ResultOut)
    {
        HeapFree(GetProcessHeap(), 0,FloatIn);
        HeapFree(GetProcessHeap(), 0,FloatOut);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    State = src_new(SRC_SINC_FASTEST, NumChannels, &error);
    if (!State)
    {
        HeapFree(GetProcessHeap(), 0,FloatIn);
        HeapFree(GetProcessHeap(), 0,FloatOut);
        HeapFree(GetProcessHeap(), 0,ResultOut);
        return ERROR_NOT_ENOUGH_MEMORY;
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
        HeapFree(GetProcessHeap(), 0,FloatIn);
        HeapFree(GetProcessHeap(), 0,FloatOut);
        HeapFree(GetProcessHeap(), 0,ResultOut);
        return ERROR_INVALID_DATA;
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
    HeapFree(GetProcessHeap(), 0,FloatIn);
    HeapFree(GetProcessHeap(), 0,FloatOut);
    src_delete(State);
    return ERROR_SUCCESS;
}
