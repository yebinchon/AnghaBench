
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int magic; } ;


 int PDH_MAGIC_COUNTER ;
 struct counter* heap_alloc_zero (int) ;

__attribute__((used)) static struct counter *create_counter( void )
{
    struct counter *counter;

    if ((counter = heap_alloc_zero( sizeof(struct counter) )))
    {
        counter->magic = PDH_MAGIC_COUNTER;
        return counter;
    }
    return ((void*)0);
}
