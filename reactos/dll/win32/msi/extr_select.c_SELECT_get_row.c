
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int db; int table; } ;
typedef TYPE_1__ MSISELECTVIEW ;
typedef int MSIRECORD ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_1__*,int ,int **) ;
 int msi_view_get_row (int ,struct tagMSIVIEW*,int ,int **) ;

__attribute__((used)) static UINT SELECT_get_row( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW *)view;

    TRACE("%p %d %p\n", sv, row, rec );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    return msi_view_get_row(sv->db, view, row, rec);
}
