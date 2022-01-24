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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, char *buf, int size, int n, const char *sym[3][10], const char *sym_m)
{
	int I = n % 10;
	int X = (n / 10) % 10;
	int C = (n / 100) % 10;
	int M = (n / 1000);

	FUNC1(buf, "", size);
	while (M--)
		FUNC0(buf, sym_m, size);
	FUNC0(buf, sym[2][C], size);
	FUNC0(buf, sym[1][X], size);
	FUNC0(buf, sym[0][I], size);
	FUNC0(buf, ". ", size);
}