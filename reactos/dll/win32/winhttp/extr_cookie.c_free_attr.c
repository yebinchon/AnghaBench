
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr {struct attr* value; struct attr* name; } ;


 int heap_free (struct attr*) ;

__attribute__((used)) static void free_attr( struct attr *attr )
{
    if (!attr) return;
    heap_free( attr->name );
    heap_free( attr->value );
    heap_free( attr );
}
