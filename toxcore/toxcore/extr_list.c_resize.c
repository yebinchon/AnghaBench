
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int element_size; void* ids; void* data; } ;
typedef TYPE_1__ BS_LIST ;


 void* realloc (void*,int) ;

__attribute__((used)) static int resize(BS_LIST *list, uint32_t new_size)
{
    void *p;

    p = realloc(list->data, list->element_size * new_size);

    if (!p) {
        return 0;
    } else {
        list->data = p;
    }

    p = realloc(list->ids, sizeof(int) * new_size);

    if (!p) {
        return 0;
    } else {
        list->ids = p;
    }

    return 1;
}
