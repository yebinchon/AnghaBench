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
typedef  int /*<<< orphan*/  fz_pcl_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_pcl_options_dj500 ; 
 int /*<<< orphan*/  fz_pcl_options_fs600 ; 
 int /*<<< orphan*/  fz_pcl_options_generic ; 
 int /*<<< orphan*/  fz_pcl_options_lj ; 
 int /*<<< orphan*/  fz_pcl_options_lj2 ; 
 int /*<<< orphan*/  fz_pcl_options_lj3 ; 
 int /*<<< orphan*/  fz_pcl_options_lj3d ; 
 int /*<<< orphan*/  fz_pcl_options_lj4 ; 
 int /*<<< orphan*/  fz_pcl_options_lj4d ; 
 int /*<<< orphan*/  fz_pcl_options_lj4pl ; 
 int /*<<< orphan*/  fz_pcl_options_ljet4 ; 
 int /*<<< orphan*/  fz_pcl_options_lp2563b ; 
 int /*<<< orphan*/  fz_pcl_options_oce9050 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

void FUNC3(fz_context *ctx, fz_pcl_options *opts, const char *preset)
{
	if (preset == NULL || *preset == 0 || !FUNC2(preset, "generic"))
		FUNC0(opts, &fz_pcl_options_generic);
	else if (!FUNC2(preset, "ljet4"))
		FUNC0(opts, &fz_pcl_options_ljet4);
	else if (!FUNC2(preset, "dj500"))
		FUNC0(opts, &fz_pcl_options_dj500);
	else if (!FUNC2(preset, "fs600"))
		FUNC0(opts, &fz_pcl_options_fs600);
	else if (!FUNC2(preset, "lj"))
		FUNC0(opts, &fz_pcl_options_lj);
	else if (!FUNC2(preset, "lj2"))
		FUNC0(opts, &fz_pcl_options_lj2);
	else if (!FUNC2(preset, "lj3"))
		FUNC0(opts, &fz_pcl_options_lj3);
	else if (!FUNC2(preset, "lj3d"))
		FUNC0(opts, &fz_pcl_options_lj3d);
	else if (!FUNC2(preset, "lj4"))
		FUNC0(opts, &fz_pcl_options_lj4);
	else if (!FUNC2(preset, "lj4pl"))
		FUNC0(opts, &fz_pcl_options_lj4pl);
	else if (!FUNC2(preset, "lj4d"))
		FUNC0(opts, &fz_pcl_options_lj4d);
	else if (!FUNC2(preset, "lp2563b"))
		FUNC0(opts, &fz_pcl_options_lp2563b);
	else if (!FUNC2(preset, "oce9050"))
		FUNC0(opts, &fz_pcl_options_oce9050);
	else
		FUNC1(ctx, FZ_ERROR_GENERIC, "Unknown preset '%s'", preset);
}