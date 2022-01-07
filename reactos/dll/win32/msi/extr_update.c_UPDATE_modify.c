
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIUPDATEVIEW ;
typedef int MSIRECORD ;
typedef int MSIMODIFY ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int ,int *) ;

__attribute__((used)) static UINT UPDATE_modify( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                           MSIRECORD *rec, UINT row )
{
    MSIUPDATEVIEW *uv = (MSIUPDATEVIEW*)view;

    TRACE("%p %d %p\n", uv, eModifyMode, rec );

    return ERROR_FUNCTION_FAILED;
}
