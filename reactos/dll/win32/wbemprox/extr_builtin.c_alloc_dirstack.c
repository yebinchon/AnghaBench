
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstack {int num_allocated; scalar_t__ num_dirs; struct dirstack* dirs; void* len_dirs; } ;
typedef int WCHAR ;
typedef int UINT ;


 void* heap_alloc (int) ;
 int heap_free (struct dirstack*) ;

__attribute__((used)) static struct dirstack *alloc_dirstack( UINT size )
{
    struct dirstack *dirstack;

    if (!(dirstack = heap_alloc( sizeof(*dirstack) ))) return ((void*)0);
    if (!(dirstack->dirs = heap_alloc( sizeof(WCHAR *) * size )))
    {
        heap_free( dirstack );
        return ((void*)0);
    }
    if (!(dirstack->len_dirs = heap_alloc( sizeof(UINT) * size )))
    {
        heap_free( dirstack->dirs );
        heap_free( dirstack );
        return ((void*)0);
    }
    dirstack->num_dirs = 0;
    dirstack->num_allocated = size;
    return dirstack;
}
