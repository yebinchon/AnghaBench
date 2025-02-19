
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONGLONG ;
typedef int ULONG64 ;
typedef int UCHAR ;
typedef int* PUCHAR ;
typedef int LONGLONG ;
typedef int LONG64 ;
typedef int CHAR ;



PUCHAR DecodeRun(PUCHAR DataRun, LONGLONG *DataRunOffset, ULONGLONG *DataRunLength)
{
    UCHAR DataRunOffsetSize;
    UCHAR DataRunLengthSize;
    CHAR i;


    DataRunOffsetSize = (*DataRun >> 4) & 0xF;

    DataRunLengthSize = *DataRun & 0xF;


    *DataRunOffset = 0;
    *DataRunLength = 0;


    DataRun++;


    for (i = 0; i < DataRunLengthSize; i++)
    {
        *DataRunLength += ((ULONG64)*DataRun) << (i * 8);

        DataRun++;
    }


    if (DataRunOffsetSize == 0)
    {
        *DataRunOffset = -1;
    }

    else
    {

        for (i = 0; i < DataRunOffsetSize - 1; i++)
        {
            *DataRunOffset += ((ULONG64)*DataRun) << (i * 8);

            DataRun++;
        }

        *DataRunOffset = ((LONG64)(CHAR)(*(DataRun++)) << (i * 8)) + *DataRunOffset;
    }


    return DataRun;
}
