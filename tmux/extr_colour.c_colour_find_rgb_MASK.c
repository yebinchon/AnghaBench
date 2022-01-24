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
typedef  int u_char ;

/* Variables and functions */
 int COLOUR_FLAG_256 ; 
 int FUNC0 (int,int,int,int,int,int) ; 
 int FUNC1 (int) ; 

int
FUNC2(u_char r, u_char g, u_char b)
{
	static const int	q2c[6] = { 0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff };
	int			qr, qg, qb, cr, cg, cb, d, idx;
	int			grey_avg, grey_idx, grey;

	/* Map RGB to 6x6x6 cube. */
	qr = FUNC1(r); cr = q2c[qr];
	qg = FUNC1(g); cg = q2c[qg];
	qb = FUNC1(b); cb = q2c[qb];

	/* If we have hit the colour exactly, return early. */
	if (cr == r && cg == g && cb == b)
		return ((16 + (36 * qr) + (6 * qg) + qb) | COLOUR_FLAG_256);

	/* Work out the closest grey (average of RGB). */
	grey_avg = (r + g + b) / 3;
	if (grey_avg > 238)
		grey_idx = 23;
	else
		grey_idx = (grey_avg - 3) / 10;
	grey = 8 + (10 * grey_idx);

	/* Is grey or 6x6x6 colour closest? */
	d = FUNC0(cr, cg, cb, r, g, b);
	if (FUNC0(grey, grey, grey, r, g, b) < d)
		idx = 232 + grey_idx;
	else
		idx = 16 + (36 * qr) + (6 * qg) + qb;
	return (idx | COLOUR_FLAG_256);
}