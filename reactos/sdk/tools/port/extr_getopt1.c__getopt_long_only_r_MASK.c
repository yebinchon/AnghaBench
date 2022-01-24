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
struct option {int dummy; } ;
struct _getopt_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,char**,char const*,struct option const*,int*,int,struct _getopt_data*,int /*<<< orphan*/ ) ; 

int
FUNC1 (int argc, char **argv, const char *options,
		     const struct option *long_options, int *opt_index,
		     struct _getopt_data *d)
{
  return FUNC0 (argc, argv, options, long_options, opt_index,
			     1, d, 0);
}