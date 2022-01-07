
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int procfs_memory_get (int *,int *) ;

__attribute__((used)) static inline int procfs_memory_get_used(uint64_t *ret) {
        return procfs_memory_get(((void*)0), ret);
}
