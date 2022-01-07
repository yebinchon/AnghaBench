
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;


 int abort () ;

block_t *block_shm_Alloc (void *addr, size_t length)
{
    (void) addr; (void) length;
    abort ();
}
