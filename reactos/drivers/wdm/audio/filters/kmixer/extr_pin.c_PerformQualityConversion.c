
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int* PVOID ;
typedef int* PUSHORT ;
typedef int* PULONG ;
typedef int* PUCHAR ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int DPRINT1 (char*,int,int) ;
 void* ExAllocatePool (int ,int) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int _byteswap_ulong (int) ;
 int _byteswap_ushort (int) ;

NTSTATUS
PerformQualityConversion(
    PUCHAR Buffer,
    ULONG BufferLength,
    ULONG OldWidth,
    ULONG NewWidth,
    PVOID * Result,
    PULONG ResultLength)
{
    ULONG Samples;
    ULONG Index;

    ASSERT(OldWidth != NewWidth);

    Samples = BufferLength / (OldWidth / 8);


    if (OldWidth == 8 && NewWidth == 16)
    {
         USHORT Sample;
         PUSHORT BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(USHORT));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = Buffer[Index];
              Sample *= 2;



              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(USHORT);
    }
    else if (OldWidth == 8 && NewWidth == 32)
    {
         ULONG Sample;
         PULONG BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(ULONG));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = Buffer[Index];
              Sample *= 16777216;



              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(ULONG);
    }
    else if (OldWidth == 16 && NewWidth == 32)
    {
         ULONG Sample;
         PUSHORT BufferIn = (PUSHORT)Buffer;
         PULONG BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(ULONG));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];
              Sample *= 65536;



              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(ULONG);
    }

    else if (OldWidth == 16 && NewWidth == 8)
    {
         USHORT Sample;
         PUSHORT BufferIn = (PUSHORT)Buffer;
         PUCHAR BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(UCHAR));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];



              Sample /= 256;
              BufferOut[Index] = (Sample & 0xFF);
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(UCHAR);
    }
    else if (OldWidth == 32 && NewWidth == 8)
    {
         ULONG Sample;
         PULONG BufferIn = (PULONG)Buffer;
         PUCHAR BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(UCHAR));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];



              Sample /= 16777216;
              BufferOut[Index] = (Sample & 0xFF);
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(UCHAR);
    }
    else if (OldWidth == 32 && NewWidth == 16)
    {
         USHORT Sample;
         PULONG BufferIn = (PULONG)Buffer;
         PUSHORT BufferOut = ExAllocatePool(NonPagedPool, Samples * sizeof(USHORT));
         if (!BufferOut)
             return STATUS_INSUFFICIENT_RESOURCES;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];



              Sample /= 65536;
              BufferOut[Index] = (Sample & 0xFFFF);
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(USHORT);
    }
    else
    {
        DPRINT1("Not implemented conversion OldWidth %u NewWidth %u\n", OldWidth, NewWidth);
        return STATUS_NOT_IMPLEMENTED;
    }

    return STATUS_SUCCESS;
}
