
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typval_T ;


 scalar_t__ alloc_clear (unsigned int) ;

__attribute__((used)) static typval_T *
alloc_tv()
{
    return (typval_T *)alloc_clear((unsigned)sizeof(typval_T));
}
