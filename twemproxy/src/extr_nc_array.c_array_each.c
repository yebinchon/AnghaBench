
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct array {int dummy; } ;
typedef scalar_t__ rstatus_t ;
typedef scalar_t__ (* array_each_t ) (void*,void*) ;


 int ASSERT (int) ;
 scalar_t__ NC_OK ;
 void* array_get (struct array*,scalar_t__) ;
 scalar_t__ array_n (struct array*) ;

rstatus_t
array_each(struct array *a, array_each_t func, void *data)
{
    uint32_t i, nelem;

    ASSERT(array_n(a) != 0);
    ASSERT(func != ((void*)0));

    for (i = 0, nelem = array_n(a); i < nelem; i++) {
        void *elem = array_get(a, i);
        rstatus_t status;

        status = func(elem, data);
        if (status != NC_OK) {
            return status;
        }
    }

    return NC_OK;
}
