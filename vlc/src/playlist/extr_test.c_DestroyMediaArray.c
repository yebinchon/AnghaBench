
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int input_item_Release (int * const) ;

__attribute__((used)) static void
DestroyMediaArray(input_item_t *const array[], size_t count)
{
    for (size_t i = 0; i < count; ++i)
        input_item_Release(array[i]);
}
