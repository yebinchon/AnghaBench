
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JOINTABLE ;



__attribute__((used)) static void add_to_array( JOINTABLE **array, JOINTABLE *elem )
{
    while (*array && *array != elem)
        array++;
    if (!*array)
        *array = elem;
}
