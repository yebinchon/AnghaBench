#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int increment_t ;
struct TYPE_3__ {int b_current; double* coeffs; double* buffer; int /*<<< orphan*/  coeff_half_len; } ;
typedef  TYPE_1__ SINC_FILTER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline double
FUNC4 (SINC_FILTER *filter, increment_t increment, increment_t start_filter_index)
{	double		fraction, left, right, icoeff ;
	increment_t	filter_index, max_filter_index ;
	int			data_index, coeff_count, indx ;

	/* Convert input parameters into fixed point. */
	max_filter_index = FUNC3 (filter->coeff_half_len) ;

	/* First apply the left half of the filter. */
	filter_index = start_filter_index ;
	coeff_count = (max_filter_index - filter_index) / increment ;
	filter_index = filter_index + coeff_count * increment ;
	data_index = filter->b_current - coeff_count ;

	left = 0.0 ;
	do
	{	fraction = FUNC1 (filter_index) ;
		indx = FUNC2 (filter_index) ;

		icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;

		left += icoeff * filter->buffer [data_index] ;

		filter_index -= increment ;
		data_index = data_index + 1 ;
		}
	while (filter_index >= FUNC0 (0)) ;

	/* Now apply the right half of the filter. */
	filter_index = increment - start_filter_index ;
	coeff_count = (max_filter_index - filter_index) / increment ;
	filter_index = filter_index + coeff_count * increment ;
	data_index = filter->b_current + 1 + coeff_count ;

	right = 0.0 ;
	do
	{	fraction = FUNC1 (filter_index) ;
		indx = FUNC2 (filter_index) ;

		icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;

		right += icoeff * filter->buffer [data_index] ;

		filter_index -= increment ;
		data_index = data_index - 1 ;
		}
	while (filter_index > FUNC0 (0)) ;

	return (left + right) ;
}