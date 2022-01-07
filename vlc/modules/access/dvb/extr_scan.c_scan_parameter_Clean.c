
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_scanlist_file; } ;
typedef TYPE_1__ scan_parameter_t ;


 int free (int ) ;

void scan_parameter_Clean( scan_parameter_t *p_dst )
{
    free( p_dst->psz_scanlist_file );
}
