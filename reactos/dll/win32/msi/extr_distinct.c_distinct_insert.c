
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ val; int count; int * nextcol; struct TYPE_5__* nextrow; scalar_t__ row; } ;
typedef TYPE_1__ DISTINCTSET ;


 TYPE_1__* msi_alloc (int) ;

__attribute__((used)) static DISTINCTSET ** distinct_insert( DISTINCTSET **x, UINT val, UINT row )
{

    while( *x )
    {
        if( (*x)->val == val )
        {
            (*x)->count++;
            return x;
        }
        x = &(*x)->nextrow;
    }


    *x = msi_alloc( sizeof (DISTINCTSET) );
    if( *x )
    {
        (*x)->val = val;
        (*x)->count = 1;
        (*x)->row = row;
        (*x)->nextrow = ((void*)0);
        (*x)->nextcol = ((void*)0);
    }
    return x;
}
