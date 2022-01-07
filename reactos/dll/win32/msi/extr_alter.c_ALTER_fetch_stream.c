
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIALTERVIEW ;
typedef int IStream ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int ,int ,int **) ;

__attribute__((used)) static UINT ALTER_fetch_stream( struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm)
{
    MSIALTERVIEW *av = (MSIALTERVIEW*)view;

    TRACE("%p %d %d %p\n", av, row, col, stm );

    return ERROR_FUNCTION_FAILED;
}
