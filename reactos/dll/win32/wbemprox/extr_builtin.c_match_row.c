
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef int UINT ;
typedef scalar_t__ LONGLONG ;
typedef int BOOL ;


 int FALSE ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_FILTERED ;
 int FILL_STATUS_UNFILTERED ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ eval_cond (struct table const*,int ,struct expr const*,scalar_t__*,int *) ;

__attribute__((used)) static BOOL match_row( const struct table *table, UINT row, const struct expr *cond, enum fill_status *status )
{
    LONGLONG val;
    UINT type;

    if (!cond)
    {
        *status = FILL_STATUS_UNFILTERED;
        return TRUE;
    }
    if (eval_cond( table, row, cond, &val, &type ) != S_OK)
    {
        *status = FILL_STATUS_FAILED;
        return FALSE;
    }
    *status = FILL_STATUS_FILTERED;
    return val != 0;
}
