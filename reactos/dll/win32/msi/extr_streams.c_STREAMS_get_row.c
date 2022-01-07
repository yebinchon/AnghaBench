
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ MSISTREAMSVIEW ;
typedef int MSIRECORD ;


 int TRACE (char*,TYPE_1__*,int ,int **) ;
 int msi_view_get_row (int ,struct tagMSIVIEW*,int ,int **) ;

__attribute__((used)) static UINT STREAMS_get_row( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    TRACE("%p %d %p\n", sv, row, rec);

    return msi_view_get_row( sv->db, view, row, rec );
}
