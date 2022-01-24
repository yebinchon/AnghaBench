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
typedef  int /*<<< orphan*/  whoami ;
typedef  char uint8_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int ERR ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  TOX_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 size_t FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 char* data_file_name ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  file_print_control ; 
 int /*<<< orphan*/  file_request_accept ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* input_line ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  print_groupmessage ; 
 int /*<<< orphan*/  print_groupnamelistchange ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  print_invite ; 
 int /*<<< orphan*/  print_message ; 
 int /*<<< orphan*/  print_nickchange ; 
 int /*<<< orphan*/  print_online ; 
 int /*<<< orphan*/  print_request ; 
 int /*<<< orphan*/  print_statuschange ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int FUNC27 (char*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,char*,size_t,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tox_file_chunk_request ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_file ; 
 int /*<<< orphan*/  x ; 
 int /*<<< orphan*/  y ; 

int FUNC48(int argc, char *argv[])
{
    /* minimalistic locale support (i.e. when printing dates) */
    FUNC23(LC_ALL, "");

    if (argc < 4) {
        if ((argc == 2) && !FUNC25(argv[1], "-h")) {
            FUNC19(argv[0]);
            FUNC5(0);
        }

        FUNC20("Usage: %s [--ipv4|--ipv6] IP PORT KEY [-f keyfile] (or %s -h for help)\n", argv[0], argv[0]);
        FUNC5(0);
    }

    /* let user override default by cmdline */
    uint8_t ipv6enabled = 1; /* x */
    int argvoffset = FUNC2(argc, argv, &ipv6enabled);

    if (argvoffset < 0)
        FUNC5(1);

    int on = 0;
    char *filename = "data";
    char idstring[200] = {0};
    Tox *m;

    /* [-f keyfile] MUST be last two arguments, no point in walking over the list
     * especially not a good idea to accept it anywhere in the middle */
    if (argc > argvoffset + 3)
        if (!FUNC25(argv[argc - 2], "-f"))
            filename = argv[argc - 1];

    data_file_name = filename;
    m = FUNC15();

    if ( !m ) {
        FUNC6("Failed to allocate Messenger datastructure", stderr);
        FUNC5(0);
    }

    FUNC22(m, filename);

    FUNC38(m, print_request, NULL);
    FUNC36(m, print_message, NULL);
    FUNC37(m, print_nickchange, NULL);
    FUNC39(m, print_statuschange, NULL);
    FUNC40(m, print_invite, NULL);
    FUNC41(m, print_groupmessage, NULL);
    FUNC33(m, write_file, NULL);
    FUNC34(m, file_print_control, NULL);
    FUNC32(m, file_request_accept, NULL);
    FUNC31(m, tox_file_chunk_request, NULL);
    FUNC42(m, print_groupnamelistchange, NULL);
    FUNC35(m, print_online, NULL);

    FUNC11();
    FUNC18();
    FUNC21();
    FUNC9(stdscr, y, x);

    FUNC16("/h for list of commands");
    FUNC8(m, idstring);
    FUNC16(idstring);
    FUNC26(input_line, "");

    uint16_t port = FUNC1(argv[argvoffset + 2]);
    unsigned char *binary_string = FUNC10(argv[argvoffset + 3]);
    int res = FUNC30(m, argv[argvoffset + 1], port, binary_string, NULL);

    if (!res) {
        FUNC20("Failed to convert \"%s\" into an IP address. Exiting...\n", argv[argvoffset + 1]);
        FUNC4();
        FUNC5(1);
    }

    FUNC17(stdscr, TRUE);

    FUNC16("[i] change username with /n");
    uint8_t name[TOX_MAX_NAME_LENGTH + 1];
    FUNC46(m, name);
    uint16_t namelen = FUNC47(m);
    name[namelen] = 0;

    if (namelen > 0) {
        char whoami[128 + TOX_MAX_NAME_LENGTH];
        FUNC24(whoami, sizeof(whoami), "[i] your current username is: %s", name);
        FUNC16(whoami);
    }

    time_t timestamp0 = FUNC28(NULL);

    while (1) {
        if (on == 0) {
            if (FUNC45(m)) {
                FUNC16("[i] connected to DHT");
                on = 1;
            } else {
                time_t timestamp1 = FUNC28(NULL);

                if (timestamp0 + 10 < timestamp1) {
                    timestamp0 = timestamp1;
                    FUNC30(m, argv[argvoffset + 1], port, binary_string, NULL);
                }
            }
        }

        FUNC43(m);
        FUNC3();

        int c = FUNC29(m);

        if (c == ERR || c == 27)
            continue;

        FUNC9(stdscr, y, x);

        if ((c == 0x0d) || (c == 0x0a)) {
            FUNC14(m, input_line);
            FUNC26(input_line, "");
        } else if (c == 8 || c == 127) {
            input_line[FUNC27(input_line) - 1] = '\0';
        } else if (FUNC12(c) || FUNC13(c) || c == ' ') {
            FUNC0(input_line, (char) c);
        }
    }

    FUNC7(binary_string);
    FUNC22(m, filename);
    FUNC44(m);
    FUNC4();
    return 0;
}