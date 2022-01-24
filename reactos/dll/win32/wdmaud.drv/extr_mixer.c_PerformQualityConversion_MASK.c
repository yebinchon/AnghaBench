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
typedef  int USHORT ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int* PVOID ;
typedef  int* PUSHORT ;
typedef  int* PULONG ;
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

DWORD
FUNC6(
    PUCHAR Buffer,
    ULONG BufferLength,
    ULONG OldWidth,
    ULONG NewWidth,
    PVOID * Result,
    PULONG ResultLength)
{
    ULONG Samples;
    ULONG Index;

    FUNC0(OldWidth != NewWidth);

    Samples = BufferLength / (OldWidth / 8);
    //DPRINT("Samples %u BufferLength %u\n", Samples, BufferLength);

    //SND_TRACE(L"PerformQualityConversion OldWidth %u NewWidth %u\n", OldWidth, NewWidth);

    if (OldWidth == 8 && NewWidth == 16)
    {
         USHORT Sample;
         PUSHORT BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(USHORT));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = Buffer[Index];// & 0xFF);
              Sample *= 2;
#ifdef _X86_
              Sample = _byteswap_ushort(Sample);
#endif
              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(USHORT);
    }
    else if (OldWidth == 8 && NewWidth == 32)
    {
         ULONG Sample;
         PULONG BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(ULONG));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = Buffer[Index];
              Sample *= 16777216;
#ifdef _X86_
              Sample = _byteswap_ulong(Sample);
#endif
              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(ULONG);
    }
    else if (OldWidth == 16 && NewWidth == 32)
    {
         ULONG Sample;
         PUSHORT BufferIn = (PUSHORT)Buffer;
         PULONG BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(ULONG));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];
              Sample *= 65536;
#ifdef _X86_
              Sample = _byteswap_ulong(Sample);
#endif
              BufferOut[Index] = Sample;
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(ULONG);
    }

    else if (OldWidth == 16 && NewWidth == 8)
    {
         USHORT Sample;
         PUSHORT BufferIn = (PUSHORT)Buffer;
         PUCHAR BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(UCHAR));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];
#ifdef _X86_
              Sample = _byteswap_ushort(Sample);
#endif
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
         PUCHAR BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(UCHAR));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];
#ifdef _X86_
              Sample = _byteswap_ulong(Sample);
#endif
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
         PUSHORT BufferOut = FUNC3(FUNC2(), 0, Samples * sizeof(USHORT));
         if (!BufferOut)
             return ERROR_NOT_ENOUGH_MEMORY;

          for(Index = 0; Index < Samples; Index++)
          {
              Sample = BufferIn[Index];
#ifdef _X86_
              Sample = _byteswap_ulong(Sample);
#endif
              Sample /= 65536;
              BufferOut[Index] = (Sample & 0xFFFF);
          }
          *Result = BufferOut;
          *ResultLength = Samples * sizeof(USHORT);
    }
    else
    {
        FUNC1("Not implemented conversion OldWidth %u NewWidth %u\n", OldWidth, NewWidth);
        return ERROR_NOT_SUPPORTED;
    }

    return ERROR_SUCCESS;
}