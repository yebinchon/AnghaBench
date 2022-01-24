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
struct graph_symbol {scalar_t__ merge; scalar_t__ initial; scalar_t__ boundary; scalar_t__ commit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct graph_symbol const*) ; 
 scalar_t__ FUNC1 (struct graph_symbol const*) ; 
 scalar_t__ FUNC2 (struct graph_symbol const*) ; 
 scalar_t__ FUNC3 (struct graph_symbol const*) ; 
 scalar_t__ FUNC4 (struct graph_symbol const*) ; 
 scalar_t__ FUNC5 (struct graph_symbol const*) ; 
 scalar_t__ FUNC6 (struct graph_symbol const*) ; 
 scalar_t__ FUNC7 (struct graph_symbol const*) ; 
 scalar_t__ FUNC8 (struct graph_symbol const*) ; 
 scalar_t__ FUNC9 (struct graph_symbol const*) ; 
 scalar_t__ FUNC10 (struct graph_symbol const*) ; 
 scalar_t__ FUNC11 (struct graph_symbol const*) ; 

__attribute__((used)) static const char *
FUNC12(const struct graph_symbol *symbol)
{
	if (symbol->commit) {
		if (symbol->boundary)
			return " o";
		else if (symbol->initial)
			return " I";
		else if (symbol->merge)
			return " M";
		return " *";
	}

	if (FUNC0(symbol))
		return "-+";

	if (FUNC11(symbol))
		return "-|";

	if (FUNC1(symbol))
		return "-|";

	if (FUNC10(symbol))
		return " |";

	if (FUNC9(symbol))
		return "-'";

	if (FUNC5(symbol))
		return "-+";

	if (FUNC3(symbol))
		return "--";

	if (FUNC2(symbol))
		return " +";

	if (FUNC8(symbol))
		return "-.";

	if (FUNC7(symbol))
		return " .";

	if (FUNC4(symbol))
		return "-.";

	if (FUNC6(symbol))
		return "-+";

	return "  ";
}