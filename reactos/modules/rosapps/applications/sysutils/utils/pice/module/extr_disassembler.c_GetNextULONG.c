
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;


 int GetUCHAR (scalar_t__) ;

__attribute__((used)) static ULONG GetNextULONG(USHORT sel, UCHAR *offset, UCHAR *pCode)
{
    pCode[0] = GetUCHAR((ULONG) offset + 0) & 0xFF;
    pCode[1] = GetUCHAR((ULONG) offset + 1) & 0xFF;
    pCode[2] = GetUCHAR((ULONG) offset + 2) & 0xFF;
    pCode[3] = GetUCHAR((ULONG) offset + 3) & 0xFF;

    return( *(ULONG *) pCode );
}
