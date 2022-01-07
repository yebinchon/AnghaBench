
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t zmalloc_used_memory () ;

size_t zmalloc_get_rss(void) {





    return zmalloc_used_memory();
}
