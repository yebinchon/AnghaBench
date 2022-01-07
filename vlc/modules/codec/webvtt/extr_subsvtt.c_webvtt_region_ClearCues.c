
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_child; } ;
typedef TYPE_1__ webvtt_region_t ;


 int webvtt_domnode_ChainDelete (int *) ;

__attribute__((used)) static void webvtt_region_ClearCues( webvtt_region_t *p_region )
{
    webvtt_domnode_ChainDelete( p_region->p_child );
    p_region->p_child = ((void*)0);
}
