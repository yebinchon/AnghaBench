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
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static void FUNC3( filter_t *p_filter, int color, int *matrix )
{
    double left_matrix[9] =
        {  76.24500,  149.68500,  29.07000,
          -43.02765,  -84.47235, 127.50000,
          127.50000, -106.76534, -20.73466 };
    double right_matrix[9] =
        { 257.00392,   0.00000,  360.31950,
          257.00392, -88.44438, -183.53583,
          257.00392, 455.41095,    0.00000 };
    double red = ((double)(( 0xFF0000 & color )>>16))/255.;
    double green = ((double)(( 0x00FF00 & color )>>8))/255.;
    double blue = ((double)( 0x0000FF & color ))/255.;
    double norm = FUNC2( red*red + green*green + blue*blue );
    if( norm > 0 )
    {
        red /= norm;
        green /= norm;
        blue /= norm;
    }
    /* XXX: We might still need to norm the rgb_matrix */
    double rgb_matrix[9] =
        { red*red,    red*green,   red*blue,
          red*green,  green*green, green*blue,
          red*blue,   green*blue,  blue*blue };
    double result1[9];
    double result[9];
    FUNC1( p_filter, "red: %f", red );
    FUNC1( p_filter, "green: %f", green );
    FUNC1( p_filter, "blue: %f", blue );
    FUNC0( result1, rgb_matrix, right_matrix );
    FUNC0( result, left_matrix, result1 );
    for( int i = 0; i < 9; i++ )
    {
        matrix[i] = (int)result[i];
    }
    FUNC1( p_filter, "Projection matrix:" );
    FUNC1( p_filter, "%6d %6d %6d", matrix[0], matrix[1], matrix[2] );
    FUNC1( p_filter, "%6d %6d %6d", matrix[3], matrix[4], matrix[5] );
    FUNC1( p_filter, "%6d %6d %6d", matrix[6], matrix[7], matrix[8] );
}