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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
struct args {int fullscreen; int help; int no_control; int no_display; int turn_screen_off; int show_touches; int always_on_top; int version; int render_expired_frames; void* record_filename; scalar_t__ record_format; void* push_target; void* window_title; void* serial; int /*<<< orphan*/  port; int /*<<< orphan*/  max_size; void* crop; int /*<<< orphan*/  bit_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  OPT_PUSH_TARGET 132 
#define  OPT_RENDER_EXPIRED_FRAMES 131 
#define  OPT_WINDOW_TITLE 130 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
#define  no_argument 129 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__*) ; 
#define  required_argument 128 

__attribute__((used)) static bool
FUNC7(struct args *args, int argc, char *argv[]) {
    static const struct option long_options[] = {
        {"always-on-top",         no_argument,       NULL, 'T'},
        {"bit-rate",              required_argument, NULL, 'b'},
        {"crop",                  required_argument, NULL, 'c'},
        {"fullscreen",            no_argument,       NULL, 'f'},
        {"help",                  no_argument,       NULL, 'h'},
        {"max-size",              required_argument, NULL, 'm'},
        {"no-control",            no_argument,       NULL, 'n'},
        {"no-display",            no_argument,       NULL, 'N'},
        {"port",                  required_argument, NULL, 'p'},
        {"push-target",           required_argument, NULL,
                                                 OPT_PUSH_TARGET},
        {"record",                required_argument, NULL, 'r'},
        {"record-format",         required_argument, NULL, 'F'},
        {"render-expired-frames", no_argument,       NULL,
                                                 OPT_RENDER_EXPIRED_FRAMES},
        {"serial",                required_argument, NULL, 's'},
        {"show-touches",          no_argument,       NULL, 't'},
        {"turn-screen-off",       no_argument,       NULL, 'S'},
        {"version",               no_argument,       NULL, 'v'},
        {"window-title",          required_argument, NULL,
                                                 OPT_WINDOW_TITLE},
        {NULL,                    0,                 NULL, 0  },
    };
    int c;
    while ((c = FUNC1(argc, argv, "b:c:fF:hm:nNp:r:s:StTv", long_options,
                            NULL)) != -1) {
        switch (c) {
            case 'b':
                if (!FUNC3(optarg, &args->bit_rate)) {
                    return false;
                }
                break;
            case 'c':
                args->crop = optarg;
                break;
            case 'f':
                args->fullscreen = true;
                break;
            case 'F':
                if (!FUNC6(optarg, &args->record_format)) {
                    return false;
                }
                break;
            case 'h':
                args->help = true;
                break;
            case 'm':
                if (!FUNC4(optarg, &args->max_size)) {
                    return false;
                }
                break;
            case 'n':
                args->no_control = true;
                break;
            case 'N':
                args->no_display = true;
                break;
            case 'p':
                if (!FUNC5(optarg, &args->port)) {
                    return false;
                }
                break;
            case 'r':
                args->record_filename = optarg;
                break;
            case 's':
                args->serial = optarg;
                break;
            case 'S':
                args->turn_screen_off = true;
                break;
            case 't':
                args->show_touches = true;
                break;
            case 'T':
                args->always_on_top = true;
                break;
            case 'v':
                args->version = true;
                break;
            case OPT_RENDER_EXPIRED_FRAMES:
                args->render_expired_frames = true;
                break;
            case OPT_WINDOW_TITLE:
                args->window_title = optarg;
                break;
            case OPT_PUSH_TARGET:
                args->push_target = optarg;
                break;
            default:
                // getopt prints the error message on stderr
                return false;
        }
    }

    if (args->no_display && !args->record_filename) {
        FUNC0("-N/--no-display requires screen recording (-r/--record)");
        return false;
    }

    if (args->no_display && args->fullscreen) {
        FUNC0("-f/--fullscreen-window is incompatible with -N/--no-display");
        return false;
    }

    int index = optind;
    if (index < argc) {
        FUNC0("Unexpected additional argument: %s", argv[index]);
        return false;
    }

    if (args->record_format && !args->record_filename) {
        FUNC0("Record format specified without recording");
        return false;
    }

    if (args->record_filename && !args->record_format) {
        args->record_format = FUNC2(args->record_filename);
        if (!args->record_format) {
            FUNC0("No format specified for \"%s\" (try with -F mkv)",
                 args->record_filename);
            return false;
        }
    }

    if (args->no_control && args->turn_screen_off) {
        FUNC0("Could not request to turn screen off if control is disabled");
        return false;
    }

    return true;
}