
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BYTE ;



__attribute__((used)) static
void mem_cpy (void* dst, const void* src, UINT cnt) {
 BYTE *d = (BYTE*)dst;
 const BYTE *s = (const BYTE*)src;
 while (cnt--)
  *d++ = *s++;
}
