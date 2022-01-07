
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSISTORAGESVIEW ;
typedef int MSIRECORD ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int FIXME (char*,int *,int ,int **) ;

__attribute__((used)) static UINT STORAGES_get_row( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;

    FIXME("%p %d %p\n", sv, row, rec);

    return ERROR_CALL_NOT_IMPLEMENTED;
}
