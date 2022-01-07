
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int list_remove (struct list*) ;
 int msi_free (struct list*) ;

__attribute__((used)) static void cond_free( void *ptr )
{
    struct list *mem = (struct list *)ptr - 1;

    if( ptr )
    {
        list_remove( mem );
        msi_free( mem );
    }
}
