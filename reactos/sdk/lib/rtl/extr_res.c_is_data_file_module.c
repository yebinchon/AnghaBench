
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef scalar_t__ PVOID ;



__attribute__((used)) static int is_data_file_module( PVOID BaseAddress )
{
    return (ULONG_PTR)BaseAddress & 1;
}
