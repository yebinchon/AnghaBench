
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_multiplex_toscan; } ;
typedef TYPE_1__ scan_t ;
struct TYPE_6__ {int b_scanned; } ;
typedef TYPE_2__ scan_multiplex_t ;



__attribute__((used)) static void scan_SetMultiplexScanStatus( scan_t *p_scan, scan_multiplex_t *p_mplex, bool b_scanned )
{
    if( p_mplex->b_scanned != b_scanned )
    {
        p_mplex->b_scanned = b_scanned;
        p_scan->i_multiplex_toscan += ( b_scanned ) ? -1 : 1;
    }
}
