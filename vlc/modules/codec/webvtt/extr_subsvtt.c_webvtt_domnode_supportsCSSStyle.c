
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_dom_node_t ;


 int * get_ppCSSStyle (int *) ;

__attribute__((used)) static bool webvtt_domnode_supportsCSSStyle( webvtt_dom_node_t *p_node )
{
    return get_ppCSSStyle( p_node ) != ((void*)0);
}
