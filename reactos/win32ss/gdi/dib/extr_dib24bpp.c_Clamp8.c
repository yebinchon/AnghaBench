
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;



__attribute__((used)) static __inline UCHAR
Clamp8(ULONG val)
{
   return (val > 255) ? 255 : (UCHAR)val;
}
