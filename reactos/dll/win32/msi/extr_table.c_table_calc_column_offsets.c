
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; scalar_t__ offset; int type; int colname; } ;
typedef int MSIDATABASE ;
typedef TYPE_1__ MSICOLUMNINFO ;
typedef int DWORD ;


 int LONG_STR_BYTES ;
 int TRACE (char*,int,int ,int ,scalar_t__) ;
 int assert (int) ;
 scalar_t__ bytes_per_column (int *,TYPE_1__*,int ) ;
 int debugstr_w (int ) ;

__attribute__((used)) static void table_calc_column_offsets( MSIDATABASE *db, MSICOLUMNINFO *colinfo, DWORD count )
{
    DWORD i;

    for (i = 0; colinfo && i < count; i++)
    {
         assert( i + 1 == colinfo[i].number );
         if (i) colinfo[i].offset = colinfo[i - 1].offset +
                                    bytes_per_column( db, &colinfo[i - 1], LONG_STR_BYTES );
         else colinfo[i].offset = 0;

         TRACE("column %d is [%s] with type %08x ofs %d\n",
               colinfo[i].number, debugstr_w(colinfo[i].colname),
               colinfo[i].type, colinfo[i].offset);
    }
}
