
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nbChannels; int scale; int * i_values; } ;
typedef TYPE_1__ BarGraph_t ;


 int VLC_CLIP (int,int ,int) ;
 int atof (char*) ;
 int free (int *) ;
 int iec_scale (float) ;
 int log10 (int ) ;
 char* strtok_r (char*,char*,char**) ;
 int * xrealloc (int *,int) ;

__attribute__((used)) static void parse_i_values(BarGraph_t *p_BarGraph, char *i_values)
{
    char delim[] = ":";
    char* tok;

    p_BarGraph->nbChannels = 0;
    free(p_BarGraph->i_values);
    p_BarGraph->i_values = ((void*)0);
    char *res = strtok_r(i_values, delim, &tok);
    while (res != ((void*)0)) {
        p_BarGraph->nbChannels++;
        p_BarGraph->i_values = xrealloc(p_BarGraph->i_values,
                                          p_BarGraph->nbChannels*sizeof(int));
        float db = log10(atof(res)) * 20;
        p_BarGraph->i_values[p_BarGraph->nbChannels-1] = VLC_CLIP(iec_scale(db)*p_BarGraph->scale, 0, p_BarGraph->scale);
        res = strtok_r(((void*)0), delim, &tok);
    }
}
