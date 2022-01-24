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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int* PVOID ;
typedef  int* PUSHORT ;
typedef  int* PULONG ;
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

DWORD
FUNC4(
    PUCHAR Buffer,
    ULONG BufferLength,
    ULONG OldChannels,
    ULONG NewChannels,
    ULONG BitsPerSample,
    PVOID * Result,
    PULONG ResultLength)
{
    ULONG Samples;
    ULONG NewIndex, OldIndex;

    Samples = BufferLength / (BitsPerSample / 8) / OldChannels;

    FUNC3(L"PerformChannelConversion OldChannels %u NewChannels %u\n", OldChannels, NewChannels);

    if (NewChannels > OldChannels)
    {
        if (BitsPerSample == 8)
        {
            PUCHAR BufferOut = FUNC1(FUNC0(), 0, Samples * NewChannels);
            if (!BufferOut)
                return ERROR_NOT_ENOUGH_MEMORY;

            for(NewIndex = 0, OldIndex = 0; OldIndex < Samples * OldChannels; NewIndex += NewChannels, OldIndex += OldChannels)
            {
                ULONG SubIndex = 0;

                FUNC2(&BufferOut[NewIndex], &Buffer[OldIndex], OldChannels * sizeof(UCHAR));

                do
                {
                    /* 2 channel stretched to 4 looks like LRLR */
                     BufferOut[NewIndex+OldChannels + SubIndex] = Buffer[OldIndex + (SubIndex % OldChannels)];
                }while(SubIndex++ < NewChannels - OldChannels);
            }
            *Result = BufferOut;
            *ResultLength = Samples * NewChannels;
        }
        else if (BitsPerSample == 16)
        {
            PUSHORT BufferOut = FUNC1(FUNC0(), 0, Samples * NewChannels);
            if (!BufferOut)
                return ERROR_NOT_ENOUGH_MEMORY;

            for(NewIndex = 0, OldIndex = 0; OldIndex < Samples * OldChannels; NewIndex += NewChannels, OldIndex += OldChannels)
            {
                ULONG SubIndex = 0;

                FUNC2(&BufferOut[NewIndex], &Buffer[OldIndex], OldChannels * sizeof(USHORT));

                do
                {
                     BufferOut[NewIndex+OldChannels + SubIndex] = Buffer[OldIndex + (SubIndex % OldChannels)];
                }while(SubIndex++ < NewChannels - OldChannels);
            }
            *Result = BufferOut;
            *ResultLength = Samples * NewChannels;
        }
        else if (BitsPerSample == 24)
        {
            PUCHAR BufferOut = FUNC1(FUNC0(), 0, Samples * NewChannels);
            if (!BufferOut)
                return ERROR_NOT_ENOUGH_MEMORY;

            for(NewIndex = 0, OldIndex = 0; OldIndex < Samples * OldChannels; NewIndex += NewChannels, OldIndex += OldChannels)
            {
                ULONG SubIndex = 0;

                FUNC2(&BufferOut[NewIndex], &Buffer[OldIndex], OldChannels * 3);

                do
                {
                     FUNC2(&BufferOut[(NewIndex+OldChannels + SubIndex) * 3], &Buffer[(OldIndex + (SubIndex % OldChannels)) * 3], 3);
                }while(SubIndex++ < NewChannels - OldChannels);
            }
            *Result = BufferOut;
            *ResultLength = Samples * NewChannels;
        }
        else if (BitsPerSample == 32)
        {
            PULONG BufferOut = FUNC1(FUNC0(), 0, Samples * NewChannels);
            if (!BufferOut)
                return ERROR_NOT_ENOUGH_MEMORY;

            for(NewIndex = 0, OldIndex = 0; OldIndex < Samples * OldChannels; NewIndex += NewChannels, OldIndex += OldChannels)
            {
                ULONG SubIndex = 0;

                FUNC2(&BufferOut[NewIndex], &Buffer[OldIndex], OldChannels * sizeof(ULONG));

                do
                {
                     BufferOut[NewIndex+OldChannels + SubIndex] = Buffer[OldIndex + (SubIndex % OldChannels)];
                }while(SubIndex++ < NewChannels - OldChannels);
            }
            *Result = BufferOut;
            *ResultLength = Samples * NewChannels;
        }

    }
    else
    {
        PUSHORT BufferOut = FUNC1(FUNC0(), 0, Samples * NewChannels);
        if (!BufferOut)
            return ERROR_NOT_ENOUGH_MEMORY;

        for(NewIndex = 0, OldIndex = 0; OldIndex < Samples * OldChannels; NewIndex += NewChannels, OldIndex += OldChannels)
        {
            /* TODO
             * mix stream instead of just dumping part of it ;)
             */
            FUNC2(&BufferOut[NewIndex], &Buffer[OldIndex], NewChannels * (BitsPerSample/8));
        }

        *Result = BufferOut;
        *ResultLength = Samples * NewChannels;
    }
    return ERROR_SUCCESS;
}