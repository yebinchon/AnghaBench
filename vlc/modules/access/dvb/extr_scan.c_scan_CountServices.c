
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_multiplex; TYPE_1__** pp_multiplex; } ;
typedef TYPE_2__ scan_t ;
struct TYPE_4__ {scalar_t__ i_services; } ;



__attribute__((used)) static size_t scan_CountServices( const scan_t *p_scan )
{
    size_t i_total_services = 0;
    for( size_t j = 0; j < p_scan->i_multiplex; j++ )
        i_total_services += p_scan->pp_multiplex[j]->i_services;
    return i_total_services;
}
