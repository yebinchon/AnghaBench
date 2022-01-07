
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int CopyFlags ;


 int copy_bytes_full (int,int,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static inline int copy_bytes(int fdf, int fdt, uint64_t max_bytes, CopyFlags copy_flags) {
        return copy_bytes_full(fdf, fdt, max_bytes, copy_flags, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
