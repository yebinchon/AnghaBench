
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sortcount; size_t* sorted; TYPE_1__* strings; } ;
typedef TYPE_2__ string_table ;
typedef size_t UINT ;
struct TYPE_4__ {int len; int data; } ;


 int cmp_string (int ,int ,int ,int ) ;

__attribute__((used)) static int find_insert_index( const string_table *st, UINT string_id )
{
    int i, c, low = 0, high = st->sortcount - 1;

    while (low <= high)
    {
        i = (low + high) / 2;
        c = cmp_string( st->strings[string_id].data, st->strings[string_id].len,
                        st->strings[st->sorted[i]].data, st->strings[st->sorted[i]].len );
        if (c < 0)
            high = i - 1;
        else if (c > 0)
            low = i + 1;
        else
            return -1;
    }
    return high + 1;
}
