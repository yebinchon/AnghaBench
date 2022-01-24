#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ after; scalar_t__ print_path; scalar_t__ vimgrep; scalar_t__ ackmate; } ;
struct TYPE_3__ {scalar_t__ lines_since_last_match; int /*<<< orphan*/  in_a_match; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 scalar_t__ PATH_PRINT_EACH_LINE ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__ opts ; 
 int /*<<< orphan*/  out_fd ; 
 TYPE_1__ print_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char) ; 

void FUNC4(const char *path, const char *buf, size_t n) {
    char sep = '-';

    if (opts.ackmate || opts.vimgrep) {
        sep = ':';
    }

    if (print_context.lines_since_last_match != 0 &&
        print_context.lines_since_last_match <= opts.after) {
        if (opts.print_path == PATH_PRINT_EACH_LINE) {
            FUNC3(path, ':');
        }
        FUNC2(print_context.line, sep);

        FUNC1(buf, 1, n, out_fd);
        FUNC0('\n', out_fd);
    }

    print_context.line++;
    if (!print_context.in_a_match && print_context.lines_since_last_match < INT_MAX) {
        print_context.lines_since_last_match++;
    }
}