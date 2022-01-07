
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float f_black_crush; float f_black_level; double f_gamma; float f_white_crush; double f_white_level; } ;
typedef TYPE_1__ panoramix_gamma_t ;


 double pow (float,double) ;

__attribute__((used)) static double GammaFactor( const panoramix_gamma_t *g, float f_value )
{
    if( f_value <= g->f_black_crush )
    {
        float f_input = f_value * g->f_black_level / g->f_black_crush + (1.0 - g->f_black_level);

        return pow( f_input, 1.0 / g->f_gamma );
    }
    else if( f_value >= g->f_white_crush )
    {
        float f_input = (f_value * (1.0 - (g->f_white_level + 1.0)) + (g->f_white_level + 1.0) * g->f_white_crush - 1.0) / (g->f_white_crush - 1.0);
        return pow( f_input, 1.0 / g->f_gamma );
    }
    return 1.0;
}
