
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct msistring {int dummy; } ;
struct TYPE_5__ {int maxcount; int freeslot; scalar_t__ sortcount; int codepage; struct TYPE_5__* strings; void* sorted; } ;
typedef TYPE_1__ string_table ;
typedef int UINT ;


 void* msi_alloc (int) ;
 TYPE_1__* msi_alloc_zero (int) ;
 int msi_free (TYPE_1__*) ;
 int validate_codepage (int ) ;

__attribute__((used)) static string_table *init_stringtable( int entries, UINT codepage )
{
    string_table *st;

    if (!validate_codepage( codepage ))
        return ((void*)0);

    st = msi_alloc( sizeof (string_table) );
    if( !st )
        return ((void*)0);
    if( entries < 1 )
        entries = 1;

    st->strings = msi_alloc_zero( sizeof(struct msistring) * entries );
    if( !st->strings )
    {
        msi_free( st );
        return ((void*)0);
    }

    st->sorted = msi_alloc( sizeof (UINT) * entries );
    if( !st->sorted )
    {
        msi_free( st->strings );
        msi_free( st );
        return ((void*)0);
    }

    st->maxcount = entries;
    st->freeslot = 1;
    st->codepage = codepage;
    st->sortcount = 0;

    return st;
}
