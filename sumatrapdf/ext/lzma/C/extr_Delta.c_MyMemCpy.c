
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Byte ;



__attribute__((used)) static void MyMemCpy(Byte *dest, const Byte *src, unsigned size)
{
  unsigned i;
  for (i = 0; i < size; i++)
    dest[i] = src[i];
}
