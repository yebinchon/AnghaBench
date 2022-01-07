
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMENTO_UNDERLYING_FREE (void*) ;

void Memento_free(void *b)
{
    MEMENTO_UNDERLYING_FREE(b);
}
