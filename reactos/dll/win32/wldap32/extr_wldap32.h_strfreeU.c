
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heap_free (char*) ;

__attribute__((used)) static inline void strfreeU( char *str )
{
    heap_free( str );
}
