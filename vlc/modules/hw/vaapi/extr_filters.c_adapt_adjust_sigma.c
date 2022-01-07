
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {float member_0; float member_1; } ;


 float GET_DRV_SIGMA (float const,struct range const,struct range const) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static float
adapt_adjust_sigma(char const * psz_var, float const sigma,
                   struct range const * p_range)
{
    if (!strcmp(psz_var, "contrast"))
    {
        struct range const adapt_range = { .0f, .35f };
        return GET_DRV_SIGMA(sigma, *p_range, adapt_range);
    }
    else if (!strcmp(psz_var, "saturation"))
    {
        struct range const adapt_range = { .0f, 1.f };
        return GET_DRV_SIGMA(sigma, *p_range, adapt_range);
    }
    return sigma;
}
