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
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* config_bind ; 
 int /*<<< orphan*/  config_port ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  no_argument ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(int c, char **v)
{
#ifdef CHM_HTTP_SIMPLE
    if (c < 2)
        usage(v[0]);

    /* run the server */
    chmhttp_server(v[1]);

#else
    int optindex = 0;

    struct option longopts[] = 
    {
        { "port", required_argument, 0, 'p' },
        { "bind", required_argument, 0, 'b' },
        { "help", no_argument, 0, 'h' },
        { 0, 0, 0, 0 }
    };

    while (1) 
    {
        int o;
        o = FUNC4 (c, v, "n:b:h", longopts, &optindex);
        if (o < 0) 
        {
            break;
        }

        switch (o) 
        {
            case 'p':
                config_port = FUNC0 (optarg);
                if (config_port <= 0) 
                {
                    FUNC3(stderr, "bad port number (%s)\n", optarg);
                    FUNC2(1);
                }
                break;

            case 'b':
                FUNC5 (config_bind, optarg, 65536);
                config_bind[65535] = '\0';
                break;

            case 'h':
                FUNC6 (v[0]);
                break;
        }

    }

    if (optind + 1 != c)
    {
        FUNC6 (v[0]);
    }

    /* run the server */
    FUNC1(v[optind]);
#endif

    /* NOT REACHED */
    return 0;
}