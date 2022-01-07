
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {size_t num_cols; int view; TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 size_t ERROR_SUCCESS ;
 int MSITYPE_KEY ;
 size_t TABLE_fetch_int (int *,size_t,size_t,size_t*) ;
 int WARN (char*,size_t) ;
 size_t get_table_value_from_record (TYPE_2__*,int *,size_t,size_t*) ;

__attribute__((used)) static int compare_record( MSITABLEVIEW *tv, UINT row, MSIRECORD *rec )
{
    UINT r, i, ivalue, x;

    for (i = 0; i < tv->num_cols; i++ )
    {
        if (!(tv->columns[i].type & MSITYPE_KEY)) continue;

        r = get_table_value_from_record( tv, rec, i + 1, &ivalue );
        if (r != ERROR_SUCCESS)
            return 1;

        r = TABLE_fetch_int( &tv->view, row, i + 1, &x );
        if (r != ERROR_SUCCESS)
        {
            WARN("TABLE_fetch_int should not fail here %u\n", r);
            return -1;
        }
        if (ivalue > x)
        {
            return 1;
        }
        else if (ivalue == x)
        {
            if (i < tv->num_cols - 1) continue;
            return 0;
        }
        else
            return -1;
    }
    return 1;
}
