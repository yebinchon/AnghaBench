
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int open_cb_default(void *opaque, void **datap, uint64_t *sizep)
{
    *datap = opaque;
    (void) sizep;
    return 0;
}
