
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PBYTE ;
typedef int DWORD ;



__attribute__((used)) static inline DWORD dtohl(DWORD in)
{
    PBYTE in_ptr = (PBYTE)&in;
    return in_ptr[0] | (in_ptr[1] << 8) | (in_ptr[2] << 16) | (in_ptr[3] << 24);
}
