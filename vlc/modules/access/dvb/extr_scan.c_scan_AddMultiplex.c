
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_multiplex; int i_multiplex_toscan; TYPE_2__** pp_multiplex; } ;
typedef TYPE_1__ scan_t ;
struct TYPE_8__ {int b_scanned; } ;
typedef TYPE_2__ scan_multiplex_t ;


 TYPE_2__** realloc (TYPE_2__**,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool scan_AddMultiplex( scan_t *p_scan, scan_multiplex_t *p_mplex )
{
    scan_multiplex_t **pp_realloc = realloc( p_scan->pp_multiplex,
                                             sizeof(scan_multiplex_t *) * (p_scan->i_multiplex + 1) );
    if( unlikely(!pp_realloc) )
        return 0;
    pp_realloc[p_scan->i_multiplex] = p_mplex;
    p_scan->pp_multiplex = pp_realloc;
    p_scan->i_multiplex++;
    if( !p_mplex->b_scanned )
        p_scan->i_multiplex_toscan++;
    return 1;
}
