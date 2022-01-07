
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PCHAR ;
typedef int BOOLEAN ;


 int GspHex2MemGetContent ;
 int GspWriteMem (scalar_t__,int,int ,int ,scalar_t__) ;

__attribute__((used)) static PCHAR
GspHex2Mem(PCHAR Buffer,
           PCHAR Address,
           ULONG Count,
           BOOLEAN MayFault)
{
    Count = GspWriteMem(Address, Count, MayFault, GspHex2MemGetContent, Buffer);
    return Buffer + 2 * Count;
}
