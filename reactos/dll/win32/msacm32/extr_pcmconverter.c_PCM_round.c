
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double DWORD ;


 int assert (double) ;

__attribute__((used)) static inline DWORD PCM_round(DWORD a, DWORD b, DWORD c)
{
    assert(c);

    return ((double)a * (double)b + (double)c - 1) / (double)c;
}
