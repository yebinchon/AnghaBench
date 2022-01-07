
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nextcol; struct TYPE_4__* nextrow; } ;
typedef TYPE_1__ DISTINCTSET ;


 int msi_free (TYPE_1__*) ;

__attribute__((used)) static void distinct_free( DISTINCTSET *x )
{
    while( x )
    {
        DISTINCTSET *next = x->nextrow;
        distinct_free( x->nextcol );
        msi_free( x );
        x = next;
    }
}
