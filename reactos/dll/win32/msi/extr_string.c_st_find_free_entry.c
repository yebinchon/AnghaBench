
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msistring {scalar_t__ nonpersistent_refcount; scalar_t__ persistent_refcount; } ;
struct TYPE_4__ {int freeslot; size_t maxcount; size_t* sorted; struct msistring* strings; } ;
typedef TYPE_1__ string_table ;
typedef size_t UINT ;


 int ERR (char*) ;
 int TRACE (char*,TYPE_1__*) ;
 int msi_free (struct msistring*) ;
 size_t* msi_realloc (size_t*,size_t) ;
 struct msistring* msi_realloc_zero (struct msistring*,size_t) ;

__attribute__((used)) static int st_find_free_entry( string_table *st )
{
    UINT i, sz, *s;
    struct msistring *p;

    TRACE("%p\n", st);

    if( st->freeslot )
    {
        for( i = st->freeslot; i < st->maxcount; i++ )
            if( !st->strings[i].persistent_refcount &&
                !st->strings[i].nonpersistent_refcount )
                return i;
    }
    for( i = 1; i < st->maxcount; i++ )
        if( !st->strings[i].persistent_refcount &&
            !st->strings[i].nonpersistent_refcount )
            return i;


    sz = st->maxcount + 1 + st->maxcount/2;
    p = msi_realloc_zero( st->strings, sz * sizeof(struct msistring) );
    if( !p )
        return -1;

    s = msi_realloc( st->sorted, sz*sizeof(UINT) );
    if( !s )
    {
        msi_free( p );
        return -1;
    }

    st->strings = p;
    st->sorted = s;

    st->freeslot = st->maxcount;
    st->maxcount = sz;
    if( st->strings[st->freeslot].persistent_refcount ||
        st->strings[st->freeslot].nonpersistent_refcount )
        ERR("oops. expected freeslot to be free...\n");
    return st->freeslot;
}
