
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;


 int GetUCHAR (scalar_t__) ;

__attribute__((used)) static UCHAR GetNextUCHAR(USHORT sel, UCHAR *offset, UCHAR *pCode)
{
    pCode[0] = GetUCHAR((ULONG) offset + 0) & 0xFF;

    return( pCode[0] );
}
