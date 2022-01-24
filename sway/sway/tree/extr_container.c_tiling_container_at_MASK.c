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
struct wlr_surface {int dummy; } ;
struct sway_node {struct sway_container* sway_container; } ;
struct sway_container {int dummy; } ;

/* Variables and functions */
#define  L_HORIZ 132 
#define  L_NONE 131 
#define  L_STACKED 130 
#define  L_TABBED 129 
#define  L_VERT 128 
 struct sway_container* FUNC0 (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ; 
 struct sway_container* FUNC1 (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ; 
 struct sway_container* FUNC2 (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_node*) ; 
 int FUNC4 (struct sway_node*) ; 
 scalar_t__ FUNC5 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,double,double,struct wlr_surface**,double*,double*) ; 

struct sway_container *FUNC7(struct sway_node *parent,
		double lx, double ly,
		struct wlr_surface **surface, double *sx, double *sy) {
	if (FUNC5(parent)) {
		FUNC6(parent->sway_container, lx, ly, surface, sx, sy);
		return parent->sway_container;
	}
	if (!FUNC3(parent)) {
		return NULL;
	}
	switch (FUNC4(parent)) {
	case L_HORIZ:
	case L_VERT:
		return FUNC0(parent, lx, ly, surface, sx, sy);
	case L_TABBED:
		return FUNC2(parent, lx, ly, surface, sx, sy);
	case L_STACKED:
		return FUNC1(parent, lx, ly, surface, sx, sy);
	case L_NONE:
		return NULL;
	}
	return NULL;
}