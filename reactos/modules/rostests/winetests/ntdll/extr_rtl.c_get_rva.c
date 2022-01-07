
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HMODULE ;
typedef int DWORD ;



__attribute__((used)) static inline void *get_rva( HMODULE module, DWORD va )
{
    return (void *)((char *)module + va);
}
