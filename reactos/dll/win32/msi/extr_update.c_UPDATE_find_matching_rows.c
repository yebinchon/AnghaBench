
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIITERHANDLE ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,struct tagMSIVIEW*,int ,int ,int ) ;

__attribute__((used)) static UINT UPDATE_find_matching_rows( struct tagMSIVIEW *view, UINT col, UINT val, UINT *row, MSIITERHANDLE *handle )
{
    TRACE("%p %d %d %p\n", view, col, val, *handle );

    return ERROR_FUNCTION_FAILED;
}
