
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
struct args {int fullscreen; int help; int no_control; int no_display; int turn_screen_off; int show_touches; int always_on_top; int version; int render_expired_frames; void* record_filename; scalar_t__ record_format; void* push_target; void* window_title; void* serial; int port; int max_size; void* crop; int bit_rate; } ;


 int LOGE (char*,...) ;



 int getopt_long (int,char**,char*,struct option const*,int *) ;
 scalar_t__ guess_record_format (void*) ;

 void* optarg ;
 int optind ;
 int parse_bit_rate (void*,int *) ;
 int parse_max_size (void*,int *) ;
 int parse_port (void*,int *) ;
 int parse_record_format (void*,scalar_t__*) ;


__attribute__((used)) static bool
parse_args(struct args *args, int argc, char *argv[]) {
    static const struct option long_options[] = {
        {"always-on-top", 129, ((void*)0), 'T'},
        {"bit-rate", 128, ((void*)0), 'b'},
        {"crop", 128, ((void*)0), 'c'},
        {"fullscreen", 129, ((void*)0), 'f'},
        {"help", 129, ((void*)0), 'h'},
        {"max-size", 128, ((void*)0), 'm'},
        {"no-control", 129, ((void*)0), 'n'},
        {"no-display", 129, ((void*)0), 'N'},
        {"port", 128, ((void*)0), 'p'},
        {"push-target", 128, ((void*)0),
                                                 132},
        {"record", 128, ((void*)0), 'r'},
        {"record-format", 128, ((void*)0), 'F'},
        {"render-expired-frames", 129, ((void*)0),
                                                 131},
        {"serial", 128, ((void*)0), 's'},
        {"show-touches", 129, ((void*)0), 't'},
        {"turn-screen-off", 129, ((void*)0), 'S'},
        {"version", 129, ((void*)0), 'v'},
        {"window-title", 128, ((void*)0),
                                                 130},
        {((void*)0), 0, ((void*)0), 0 },
    };
    int c;
    while ((c = getopt_long(argc, argv, "b:c:fF:hm:nNp:r:s:StTv", long_options,
                            ((void*)0))) != -1) {
        switch (c) {
            case 'b':
                if (!parse_bit_rate(optarg, &args->bit_rate)) {
                    return 0;
                }
                break;
            case 'c':
                args->crop = optarg;
                break;
            case 'f':
                args->fullscreen = 1;
                break;
            case 'F':
                if (!parse_record_format(optarg, &args->record_format)) {
                    return 0;
                }
                break;
            case 'h':
                args->help = 1;
                break;
            case 'm':
                if (!parse_max_size(optarg, &args->max_size)) {
                    return 0;
                }
                break;
            case 'n':
                args->no_control = 1;
                break;
            case 'N':
                args->no_display = 1;
                break;
            case 'p':
                if (!parse_port(optarg, &args->port)) {
                    return 0;
                }
                break;
            case 'r':
                args->record_filename = optarg;
                break;
            case 's':
                args->serial = optarg;
                break;
            case 'S':
                args->turn_screen_off = 1;
                break;
            case 't':
                args->show_touches = 1;
                break;
            case 'T':
                args->always_on_top = 1;
                break;
            case 'v':
                args->version = 1;
                break;
            case 131:
                args->render_expired_frames = 1;
                break;
            case 130:
                args->window_title = optarg;
                break;
            case 132:
                args->push_target = optarg;
                break;
            default:

                return 0;
        }
    }

    if (args->no_display && !args->record_filename) {
        LOGE("-N/--no-display requires screen recording (-r/--record)");
        return 0;
    }

    if (args->no_display && args->fullscreen) {
        LOGE("-f/--fullscreen-window is incompatible with -N/--no-display");
        return 0;
    }

    int index = optind;
    if (index < argc) {
        LOGE("Unexpected additional argument: %s", argv[index]);
        return 0;
    }

    if (args->record_format && !args->record_filename) {
        LOGE("Record format specified without recording");
        return 0;
    }

    if (args->record_filename && !args->record_format) {
        args->record_format = guess_record_format(args->record_filename);
        if (!args->record_format) {
            LOGE("No format specified for \"%s\" (try with -F mkv)",
                 args->record_filename);
            return 0;
        }
    }

    if (args->no_control && args->turn_screen_off) {
        LOGE("Could not request to turn screen off if control is disabled");
        return 0;
    }

    return 1;
}
