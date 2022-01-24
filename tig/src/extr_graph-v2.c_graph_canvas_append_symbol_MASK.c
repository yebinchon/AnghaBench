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
struct graph_v2 {int dummy; } ;
struct graph_symbol {int dummy; } ;
struct graph_canvas {int /*<<< orphan*/  size; struct graph_symbol* symbols; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct graph_symbol**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct graph_v2 *graph, struct graph_canvas *canvas, struct graph_symbol *symbol)
{
	if (FUNC0(&canvas->symbols, canvas->size, 1))
		canvas->symbols[canvas->size++] = *symbol;
}