
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sortcount; scalar_t__* sorted; } ;
typedef TYPE_1__ string_table ;
typedef scalar_t__ UINT ;


 int find_insert_index (TYPE_1__*,scalar_t__) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void insert_string_sorted( string_table *st, UINT string_id )
{
    int i;

    i = find_insert_index( st, string_id );
    if (i == -1)
        return;

    memmove( &st->sorted[i] + 1, &st->sorted[i], (st->sortcount - i) * sizeof(UINT) );
    st->sorted[i] = string_id;
    st->sortcount++;
}
