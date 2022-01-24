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
struct sway_output {int dummy; } ;
struct output_config {int dummy; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 struct output_config* FUNC0 (char*,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct sway_output*) ; 

struct output_config *FUNC2(struct sway_output *output) {
	char id[128];
	FUNC1(id, sizeof(id), output);
	return FUNC0(id, output);
}