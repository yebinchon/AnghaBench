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
struct vlc_run_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (struct vlc_run_args*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_run_args*) ; 

int FUNC3(int argc, char *argv[])
{
    const char *filename;
    struct vlc_run_args args;
    FUNC2(&args);

    switch (argc)
    {
        case 2:
            filename = argv[argc - 1];
            break;
        default:
            FUNC0(stderr, "Usage: [VLC_TARGET=demux] %s <filename>\n", argv[0]);
            return 1;
    }

    return -FUNC1(&args, filename);
}