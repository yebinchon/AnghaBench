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
typedef  int /*<<< orphan*/  uint16_t ;
struct instance {int log_level; int stats_interval; size_t mbuf_chunk_size; void* pid_filename; void* stats_addr; int /*<<< orphan*/  stats_port; void* conf_filename; void* log_filename; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  NC_ERROR ; 
 int NC_MBUF_MAX_SIZE ; 
 int NC_MBUF_MIN_SIZE ; 
 int /*<<< orphan*/  NC_OK ; 
 int daemonize ; 
 int describe_stats ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  long_options ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* optarg ; 
 scalar_t__ opterr ; 
 int optopt ; 
 int /*<<< orphan*/  short_options ; 
 int show_help ; 
 int show_version ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int test_conf ; 

__attribute__((used)) static rstatus_t
FUNC5(int argc, char **argv, struct instance *nci)
{
    int c, value;

    opterr = 0;

    for (;;) {
        c = FUNC0(argc, argv, short_options, long_options, NULL);
        if (c == -1) {
            /* no more options */
            break;
        }

        switch (c) {
        case 'h':
            show_version = 1;
            show_help = 1;
            break;

        case 'V':
            show_version = 1;
            break;

        case 't':
            test_conf = 1;
            break;

        case 'd':
            daemonize = 1;
            break;

        case 'D':
            describe_stats = 1;
            show_version = 1;
            break;

        case 'v':
            value = FUNC2(optarg, FUNC4(optarg));
            if (value < 0) {
                FUNC1("nutcracker: option -v requires a number");
                return NC_ERROR;
            }
            nci->log_level = value;
            break;

        case 'o':
            nci->log_filename = optarg;
            break;

        case 'c':
            nci->conf_filename = optarg;
            break;

        case 's':
            value = FUNC2(optarg, FUNC4(optarg));
            if (value < 0) {
                FUNC1("nutcracker: option -s requires a number");
                return NC_ERROR;
            }
            if (!FUNC3(value)) {
                FUNC1("nutcracker: option -s value %d is not a valid "
                           "port", value);
                return NC_ERROR;
            }

            nci->stats_port = (uint16_t)value;
            break;

        case 'i':
            value = FUNC2(optarg, FUNC4(optarg));
            if (value < 0) {
                FUNC1("nutcracker: option -i requires a number");
                return NC_ERROR;
            }

            nci->stats_interval = value;
            break;

        case 'a':
            nci->stats_addr = optarg;
            break;

        case 'p':
            nci->pid_filename = optarg;
            break;

        case 'm':
            value = FUNC2(optarg, FUNC4(optarg));
            if (value <= 0) {
                FUNC1("nutcracker: option -m requires a non-zero number");
                return NC_ERROR;
            }

            if (value < NC_MBUF_MIN_SIZE || value > NC_MBUF_MAX_SIZE) {
                FUNC1("nutcracker: mbuf chunk size must be between %zu and"
                           " %zu bytes", NC_MBUF_MIN_SIZE, NC_MBUF_MAX_SIZE);
                return NC_ERROR;
            }

            nci->mbuf_chunk_size = (size_t)value;
            break;

        case '?':
            switch (optopt) {
            case 'o':
            case 'c':
            case 'p':
                FUNC1("nutcracker: option -%c requires a file name",
                           optopt);
                break;

            case 'm':
            case 'v':
            case 's':
            case 'i':
                FUNC1("nutcracker: option -%c requires a number", optopt);
                break;

            case 'a':
                FUNC1("nutcracker: option -%c requires a string", optopt);
                break;

            default:
                FUNC1("nutcracker: invalid option -- '%c'", optopt);
                break;
            }
            return NC_ERROR;

        default:
            FUNC1("nutcracker: invalid option -- '%c'", optopt);
            return NC_ERROR;

        }
    }

    return NC_OK;
}