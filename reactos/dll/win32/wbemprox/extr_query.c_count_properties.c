
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* table; } ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {scalar_t__ num_cols; } ;


 int is_method (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static UINT count_properties( const struct view *view )
{
    UINT i, num_props = 0;

    for (i = 0; i < view->table->num_cols; i++)
    {
        if (!is_method( view->table, i)) num_props++;
    }
    return num_props;
}
