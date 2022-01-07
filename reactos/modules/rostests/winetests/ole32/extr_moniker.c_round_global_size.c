
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;


 int GMEM_FIXED ;
 void* GlobalAlloc (int ,int) ;
 int GlobalFree (void*) ;
 int GlobalSize (void*) ;

__attribute__((used)) static SIZE_T round_global_size(SIZE_T size)
{
    static SIZE_T global_size_alignment = -1;
    if (global_size_alignment == -1)
    {
        void *p = GlobalAlloc(GMEM_FIXED, 1);
        global_size_alignment = GlobalSize(p);
        GlobalFree(p);
    }

    return ((size + global_size_alignment - 1) & ~(global_size_alignment - 1));
}
