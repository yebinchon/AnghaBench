
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int filter_chain_t ;


 int SPU_ES ;
 int * filter_chain_NewInner (int *,char const*,int *,int,int ) ;

filter_chain_t *filter_chain_NewSPU( vlc_object_t *obj, const char *cap )
{
    return filter_chain_NewInner( obj, cap, ((void*)0), 0, SPU_ES );
}
