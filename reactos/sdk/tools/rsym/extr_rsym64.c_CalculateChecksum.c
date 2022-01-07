
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int DWORD ;



WORD
CalculateChecksum(DWORD Start, void *pFile, ULONG cbSize)
{
    WORD *Ptr = pFile;
    DWORD i;
    DWORD checksum = Start;

    for (i = 0; i < (cbSize + 1) / sizeof(WORD); i++)
    {
        checksum += Ptr[i];
        checksum = (checksum + (checksum >> 16)) & 0xffff;
    }

    return checksum ;
}
