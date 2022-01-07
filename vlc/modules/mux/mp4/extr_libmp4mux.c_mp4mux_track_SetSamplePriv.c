
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t i_data; int * p_data; } ;
struct TYPE_5__ {TYPE_1__ sample_priv; } ;
typedef TYPE_2__ mp4mux_trackinfo_t ;


 int free (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;

void mp4mux_track_SetSamplePriv(mp4mux_trackinfo_t *t,
                                const uint8_t *p_data, size_t i_data)
{
    if(t->sample_priv.p_data)
    {
        free(t->sample_priv.p_data);
        t->sample_priv.p_data = ((void*)0);
        t->sample_priv.i_data = 0;
    }

    if(p_data && i_data)
    {
        t->sample_priv.p_data = malloc(i_data);
        if(i_data)
        {
            memcpy(t->sample_priv.p_data, p_data, i_data);
            t->sample_priv.i_data = i_data;
        }
    }
}
