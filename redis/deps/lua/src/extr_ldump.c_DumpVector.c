
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpState ;


 int DumpInt (int,int *) ;
 int DumpMem (void const*,int,size_t,int *) ;

__attribute__((used)) static void DumpVector(const void* b, int n, size_t size, DumpState* D)
{
 DumpInt(n,D);
 DumpMem(b,n,size,D);
}
