#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct range {float member_0; float member_1; } ;

/* Variables and functions */
 float FUNC0 (float const,struct range const,struct range const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static float
FUNC2(char const * psz_var, float const sigma,
                   struct range const * p_range)
{
    if (!FUNC1(psz_var, "contrast"))
    {
        struct range const      adapt_range = { .0f, .35f };
        return FUNC0(sigma, *p_range, adapt_range);
    }
    else if (!FUNC1(psz_var, "saturation"))
    {
        struct range const      adapt_range = { .0f, 1.f };
        return FUNC0(sigma, *p_range, adapt_range);
    }
    return sigma;
}