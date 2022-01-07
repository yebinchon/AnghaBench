
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int whoami ;
typedef char uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ time_t ;
typedef int Tox ;


 int ERR ;
 int LC_ALL ;
 int TOX_MAX_NAME_LENGTH ;
 int TRUE ;
 int appender (char*,char) ;
 size_t atoi (char*) ;
 int cmdline_parsefor_ipv46 (int,char**,char*) ;
 char* data_file_name ;
 int do_refresh () ;
 int endwin () ;
 int exit (int) ;
 int file_print_control ;
 int file_request_accept ;
 int fputs (char*,int ) ;
 int free (unsigned char*) ;
 int get_id (int *,char*) ;
 int getmaxyx (int ,int ,int ) ;
 unsigned char* hex_string_to_bin (char*) ;
 int initscr () ;
 char* input_line ;
 scalar_t__ isalnum (int) ;
 scalar_t__ ispunct (int) ;
 int line_eval (int *,char*) ;
 int * load_data () ;
 int new_lines (char*) ;
 int nodelay (int ,int ) ;
 int noecho () ;
 int print_groupmessage ;
 int print_groupnamelistchange ;
 int print_help (char*) ;
 int print_invite ;
 int print_message ;
 int print_nickchange ;
 int print_online ;
 int print_request ;
 int print_statuschange ;
 int printf (char*,char*,...) ;
 int raw () ;
 int save_data_file (int *,char*) ;
 int setlocale (int ,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int stdscr ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ time (int *) ;
 int timeout_getch (int *) ;
 int tox_bootstrap (int *,char*,size_t,unsigned char*,int *) ;
 int tox_callback_file_chunk_request (int *,int ,int *) ;
 int tox_callback_file_recv (int *,int ,int *) ;
 int tox_callback_file_recv_chunk (int *,int ,int *) ;
 int tox_callback_file_recv_control (int *,int ,int *) ;
 int tox_callback_friend_connection_status (int *,int ,int *) ;
 int tox_callback_friend_message (int *,int ,int *) ;
 int tox_callback_friend_name (int *,int ,int *) ;
 int tox_callback_friend_request (int *,int ,int *) ;
 int tox_callback_friend_status_message (int *,int ,int *) ;
 int tox_callback_group_invite (int *,int ,int *) ;
 int tox_callback_group_message (int *,int ,int *) ;
 int tox_callback_group_namelist_change (int *,int ,int *) ;
 int tox_file_chunk_request ;
 int tox_iterate (int *) ;
 int tox_kill (int *) ;
 scalar_t__ tox_self_get_connection_status (int *) ;
 int tox_self_get_name (int *,char*) ;
 size_t tox_self_get_name_size (int *) ;
 int write_file ;
 int x ;
 int y ;

int main(int argc, char *argv[])
{

    setlocale(LC_ALL, "");

    if (argc < 4) {
        if ((argc == 2) && !strcmp(argv[1], "-h")) {
            print_help(argv[0]);
            exit(0);
        }

        printf("Usage: %s [--ipv4|--ipv6] IP PORT KEY [-f keyfile] (or %s -h for help)\n", argv[0], argv[0]);
        exit(0);
    }


    uint8_t ipv6enabled = 1;
    int argvoffset = cmdline_parsefor_ipv46(argc, argv, &ipv6enabled);

    if (argvoffset < 0)
        exit(1);

    int on = 0;
    char *filename = "data";
    char idstring[200] = {0};
    Tox *m;



    if (argc > argvoffset + 3)
        if (!strcmp(argv[argc - 2], "-f"))
            filename = argv[argc - 1];

    data_file_name = filename;
    m = load_data();

    if ( !m ) {
        fputs("Failed to allocate Messenger datastructure", stderr);
        exit(0);
    }

    save_data_file(m, filename);

    tox_callback_friend_request(m, print_request, ((void*)0));
    tox_callback_friend_message(m, print_message, ((void*)0));
    tox_callback_friend_name(m, print_nickchange, ((void*)0));
    tox_callback_friend_status_message(m, print_statuschange, ((void*)0));
    tox_callback_group_invite(m, print_invite, ((void*)0));
    tox_callback_group_message(m, print_groupmessage, ((void*)0));
    tox_callback_file_recv_chunk(m, write_file, ((void*)0));
    tox_callback_file_recv_control(m, file_print_control, ((void*)0));
    tox_callback_file_recv(m, file_request_accept, ((void*)0));
    tox_callback_file_chunk_request(m, tox_file_chunk_request, ((void*)0));
    tox_callback_group_namelist_change(m, print_groupnamelistchange, ((void*)0));
    tox_callback_friend_connection_status(m, print_online, ((void*)0));

    initscr();
    noecho();
    raw();
    getmaxyx(stdscr, y, x);

    new_lines("/h for list of commands");
    get_id(m, idstring);
    new_lines(idstring);
    strcpy(input_line, "");

    uint16_t port = atoi(argv[argvoffset + 2]);
    unsigned char *binary_string = hex_string_to_bin(argv[argvoffset + 3]);
    int res = tox_bootstrap(m, argv[argvoffset + 1], port, binary_string, ((void*)0));

    if (!res) {
        printf("Failed to convert \"%s\" into an IP address. Exiting...\n", argv[argvoffset + 1]);
        endwin();
        exit(1);
    }

    nodelay(stdscr, TRUE);

    new_lines("[i] change username with /n");
    uint8_t name[TOX_MAX_NAME_LENGTH + 1];
    tox_self_get_name(m, name);
    uint16_t namelen = tox_self_get_name_size(m);
    name[namelen] = 0;

    if (namelen > 0) {
        char whoami[128 + TOX_MAX_NAME_LENGTH];
        snprintf(whoami, sizeof(whoami), "[i] your current username is: %s", name);
        new_lines(whoami);
    }

    time_t timestamp0 = time(((void*)0));

    while (1) {
        if (on == 0) {
            if (tox_self_get_connection_status(m)) {
                new_lines("[i] connected to DHT");
                on = 1;
            } else {
                time_t timestamp1 = time(((void*)0));

                if (timestamp0 + 10 < timestamp1) {
                    timestamp0 = timestamp1;
                    tox_bootstrap(m, argv[argvoffset + 1], port, binary_string, ((void*)0));
                }
            }
        }

        tox_iterate(m);
        do_refresh();

        int c = timeout_getch(m);

        if (c == ERR || c == 27)
            continue;

        getmaxyx(stdscr, y, x);

        if ((c == 0x0d) || (c == 0x0a)) {
            line_eval(m, input_line);
            strcpy(input_line, "");
        } else if (c == 8 || c == 127) {
            input_line[strlen(input_line) - 1] = '\0';
        } else if (isalnum(c) || ispunct(c) || c == ' ') {
            appender(input_line, (char) c);
        }
    }

    free(binary_string);
    save_data_file(m, filename);
    tox_kill(m);
    endwin();
    return 0;
}
