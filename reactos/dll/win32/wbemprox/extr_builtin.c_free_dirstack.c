
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstack {struct dirstack* len_dirs; struct dirstack* dirs; } ;


 int clear_dirstack (struct dirstack*) ;
 int heap_free (struct dirstack*) ;

__attribute__((used)) static void free_dirstack( struct dirstack *dirstack )
{
    clear_dirstack( dirstack );
    heap_free( dirstack->dirs );
    heap_free( dirstack->len_dirs );
    heap_free( dirstack );
}
