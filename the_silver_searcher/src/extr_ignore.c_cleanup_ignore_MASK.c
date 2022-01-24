#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* abs_path; int /*<<< orphan*/  slash_regexes_len; int /*<<< orphan*/  slash_regexes; int /*<<< orphan*/  invert_regexes_len; int /*<<< orphan*/  invert_regexes; int /*<<< orphan*/  regexes_len; int /*<<< orphan*/  regexes; int /*<<< orphan*/  slash_names_len; int /*<<< orphan*/  slash_names; int /*<<< orphan*/  names_len; int /*<<< orphan*/  names; int /*<<< orphan*/  extensions_len; int /*<<< orphan*/  extensions; } ;
typedef  TYPE_1__ ignores ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(ignores *ig) {
    if (ig == NULL) {
        return;
    }
    FUNC1(ig->extensions, ig->extensions_len);
    FUNC1(ig->names, ig->names_len);
    FUNC1(ig->slash_names, ig->slash_names_len);
    FUNC1(ig->regexes, ig->regexes_len);
    FUNC1(ig->invert_regexes, ig->invert_regexes_len);
    FUNC1(ig->slash_regexes, ig->slash_regexes_len);
    if (ig->abs_path) {
        FUNC0(ig->abs_path);
    }
    FUNC0(ig);
}