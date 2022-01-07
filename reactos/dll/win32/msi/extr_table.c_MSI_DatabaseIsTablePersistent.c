
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int persistent; } ;
typedef TYPE_1__ MSITABLE ;
typedef int MSIDATABASE ;
typedef int MSICONDITION ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_SUCCESS ;
 int MSICONDITION_ERROR ;
 int MSICONDITION_NONE ;
 int TRACE (char*,int *,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ get_table (int *,int ,TYPE_1__**) ;

MSICONDITION MSI_DatabaseIsTablePersistent( MSIDATABASE *db, LPCWSTR table )
{
    MSITABLE *t;
    UINT r;

    TRACE("%p %s\n", db, debugstr_w(table));

    if (!table)
        return MSICONDITION_ERROR;

    r = get_table( db, table, &t );
    if (r != ERROR_SUCCESS)
        return MSICONDITION_NONE;

    return t->persistent;
}
