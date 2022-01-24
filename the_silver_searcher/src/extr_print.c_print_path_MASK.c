#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ print_path; char* color_path; scalar_t__ color; scalar_t__ vimgrep; scalar_t__ ackmate; } ;

/* Variables and functions */
 scalar_t__ PATH_PRINT_NOTHING ; 
 int /*<<< orphan*/  color_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC1 (char const*) ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  out_fd ; 

void FUNC2(const char *path, const char sep) {
    if (opts.print_path == PATH_PRINT_NOTHING && !opts.vimgrep) {
        return;
    }
    path = FUNC1(path);

    if (opts.ackmate) {
        FUNC0(out_fd, ":%s%c", path, sep);
    } else if (opts.vimgrep) {
        FUNC0(out_fd, "%s%c", path, sep);
    } else {
        if (opts.color) {
            FUNC0(out_fd, "%s%s%d%c", opts.color_path, path, color_reset, sep);
        } else {
            FUNC0(out_fd, "%s%c", path, sep);
        }
    }
}