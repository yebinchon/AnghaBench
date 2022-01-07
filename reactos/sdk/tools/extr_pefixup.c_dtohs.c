
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int* PBYTE ;



__attribute__((used)) static inline WORD dtohs(WORD in)
{
    PBYTE in_ptr = (PBYTE)&in;
    return in_ptr[0] | (in_ptr[1] << 8);
}
