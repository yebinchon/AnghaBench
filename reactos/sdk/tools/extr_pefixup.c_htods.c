
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int* PBYTE ;



__attribute__((used)) static inline WORD htods(WORD in)
{
    WORD out;
    PBYTE out_ptr = (PBYTE)&out;
    out_ptr[0] = in; out_ptr[1] = in >> 8;
    return out;
}
