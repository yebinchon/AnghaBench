
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_2__ {int db; int table; } ;
typedef TYPE_1__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 int ERROR_INVALID_PARAMETER ;
 int msi_view_get_row (int ,struct tagMSIVIEW*,int ,int **) ;

__attribute__((used)) static UINT TABLE_get_row( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW *)view;

    if (!tv->table)
        return ERROR_INVALID_PARAMETER;

    return msi_view_get_row(tv->db, view, row, rec);
}
