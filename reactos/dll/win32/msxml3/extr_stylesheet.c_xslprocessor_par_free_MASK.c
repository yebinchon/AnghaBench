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
struct xslprocessor_params {int /*<<< orphan*/  count; } ;
struct xslprocessor_par {int /*<<< orphan*/  value; int /*<<< orphan*/  name; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xslprocessor_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct xslprocessor_params *params, struct xslprocessor_par *par)
{
    params->count--;
    FUNC2(&par->entry);
    FUNC0(par->name);
    FUNC0(par->value);
    FUNC1(par);
}