
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PBYTE ;
typedef int DWORD ;



__attribute__((used)) static inline DWORD htodl(DWORD in)
{
    DWORD out;
    PBYTE out_ptr = (PBYTE)&out;
    out_ptr[0] = in ; out_ptr[1] = in >> 8;
    out_ptr[2] = in >> 16; out_ptr[3] = in >> 24;
    return out;
}
