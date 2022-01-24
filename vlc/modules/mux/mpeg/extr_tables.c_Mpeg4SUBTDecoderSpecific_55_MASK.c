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
typedef  int /*<<< orphan*/  bits_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const) ; 

__attribute__((used)) static void FUNC1( bits_buffer_t *b )
{
    FUNC0( b, 8, 0x10 ); /* textFormat, 0x10 for 3GPP TS 26.245 */
    FUNC0( b, 8, 0x00 ); /* flags: 1b: associated video info flag
                                        3b: reserved
                                        1b: duration flag
                                        3b: reserved */
    FUNC0( b, 8, 52 );   /* remaining size */

    FUNC0( b, 32, 0x00 ); /* display flags */

    FUNC0( b, 8, 0x00 ); /* horizontal justification (-1: left, 0 center, 1 right) */
    FUNC0( b, 8, 0x01 );  /* vertical   justification (-1: top, 0 center, 1 bottom) */

    FUNC0( b, 24, 0x00 ); /* background rgb */
    FUNC0( b, 8,  0xff ); /* background a */

    FUNC0( b, 16,  0x00 ); /* text box top */
    FUNC0( b, 16,  0x00 ); /* text box left */
    FUNC0( b, 16,  0x00 ); /* text box bottom */
    FUNC0( b, 16,  0x00 ); /* text box right */

    FUNC0( b, 16,  0x00 ); /* start char */
    FUNC0( b, 16,  0x00 ); /* end char */
    FUNC0( b, 16,  0x00 ); /* default font id */


    FUNC0( b, 8, 0x00 );   /* font style flags */
    FUNC0( b, 8,   12 );   /* font size */

    FUNC0( b, 24, 0x00 );  /* foreground rgb */
    FUNC0( b,  8, 0x00 );  /* foreground a */

    FUNC0( b, 24, 0x00 );
    FUNC0( b,  8,   22 );  /* atom size */

    FUNC0( b,  8,   'f' ); /* atom id */
    FUNC0( b,  8,   't' );
    FUNC0( b,  8,   'a' );
    FUNC0( b,  8,   'b' );

    FUNC0( b,  8,  0x00 );
    FUNC0( b,  8,  0x01 ); /* entry count */

    FUNC0( b, 16,  0x00 ); /* font id */
    FUNC0( b,  8,     9 ); /* font name length */
    const char fontname[] = "Helvetica";
    for(int i=0; i<9; i++)
        FUNC0( b,  8, fontname[i] ); /* font name */
}