
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ type_t ;
struct TYPE_3__ {double f_sigma; int i_dim; scalar_t__* pt_distribution; } ;
typedef TYPE_1__ filter_sys_t ;


 int M_PI ;
 int exp (int) ;
 float sqrt (int) ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static void gaussianblur_InitDistribution( filter_sys_t *p_sys )
{
    double f_sigma = p_sys->f_sigma;
    int i_dim = (int)(3.*f_sigma);
    type_t *pt_distribution = xmalloc( (2*i_dim+1) * sizeof( type_t ) );

    for( int x = -i_dim; x <= i_dim; x++ )
    {
        const float f_distribution = sqrt( exp(-(x*x)/(f_sigma*f_sigma) ) / (2.*M_PI*f_sigma*f_sigma) );



        const float f_factor = 1;


        pt_distribution[i_dim+x] = (type_t)( f_distribution * f_factor );

    }
    p_sys->i_dim = i_dim;
    p_sys->pt_distribution = pt_distribution;
}
