
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int ULONG ;


 int VT_BYREF ;
 unsigned int get_type_size (int *,int) ;

__attribute__((used)) static unsigned int get_type_alignment(ULONG *pFlags, VARTYPE vt)
{
    unsigned int size = get_type_size(pFlags, vt);
    if(vt & VT_BYREF) return 3;
    if(size == 0) return 0;
    if(size <= 4) return size - 1;
    return 7;
}
