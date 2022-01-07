
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int video; int sub; int audio; } ;
typedef TYPE_1__ es_out_sys_t ;
typedef int es_out_es_props_t ;






__attribute__((used)) static es_out_es_props_t * GetPropsByCat( es_out_sys_t *p_sys, int i_cat )
{
    switch( i_cat )
    {
    case 130:
        return &p_sys->audio;
    case 129:
        return &p_sys->sub;
    case 128:
        return &p_sys->video;
    }
    return ((void*)0);
}
