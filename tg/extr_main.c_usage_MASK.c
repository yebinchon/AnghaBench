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

/* Variables and functions */
 char* PROGNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2 (void) {
  FUNC1 ("%s Usage\n", PROGNAME);
    
  FUNC1 ("  --phone/-u                           specify username (would not be asked during authorization)\n");
  FUNC1 ("  --rsa-key/-k                         specify location of public key (possible multiple entries)\n");
  FUNC1 ("  --verbosity/-v                       increase verbosity (0-ERROR 1-WARNIN 2-NOTICE 3+-DEBUG-levels)\n");
  FUNC1 ("  --enable-msg-id/-N                   message num mode\n");
  #ifdef HAVE_LIBCONFIG
  printf ("  --config/-c                          config file name\n");
  printf ("  --profile/-p                         use specified profile\n");
  #else
  #if 0
  printf ("  --enable-binlog/-B                   enable binlog\n");
  #endif
  #endif
  FUNC1 ("  --log-level/-l                       log level\n");
  FUNC1 ("  --sync-from-start/-f                 during authorization fetch all messages since registration\n");
  FUNC1 ("  --disable-auto-accept/-E             disable auto accept of encrypted chats\n");
  #ifdef USE_LUA
  printf ("  --lua-script/-s                      lua script file\n");
  #endif
  FUNC1 ("  --wait-dialog-list/-W                send dialog_list query and wait for answer before reading input\n");
  FUNC1 ("  --disable-colors/-C                  disable color output\n");
  FUNC1 ("  --disable-readline/-R                disable readline\n");
  FUNC1 ("  --alert/-A                           enable bell notifications\n");
  FUNC1 ("  --daemonize/-d                       daemon mode\n");
  FUNC1 ("  --logname/-L <log-name>              log file name\n");
  FUNC1 ("  --username/-U <user-name>            change uid after start\n");
  FUNC1 ("  --groupname/-G <group-name>          change gid after start\n");
  FUNC1 ("  --disable-output/-D                  disable output\n");
  FUNC1 ("  --tcp-port/-P <port>                 port to listen for input commands\n");
  FUNC1 ("  --udp-socket/-S <socket-name>        unix socket to create\n");
  FUNC1 ("  --exec/-e <commands>                 make commands end exit\n");
  FUNC1 ("  --disable-names/-I                   use user and chat IDs in updates instead of names\n");
  FUNC1 ("  --enable-ipv6/-6                     use ipv6 (may be unstable)\n");
  FUNC1 ("  --help/-h                            prints this help\n");
  FUNC1 ("  --accept-any-tcp                     accepts tcp connections from any src (only loopback by default)\n");
  FUNC1 ("  --disable-link-preview               disables server-side previews to links\n");
  FUNC1 ("  --bot/-b                             bot mode\n");  
  #ifdef USE_JSON
  printf ("  --json                               prints answers and values in json format\n");
  #endif
  #ifdef USE_PYTHON
  printf ("  --python-script/-Z <script-name>     python script file\n");
  #endif
  FUNC1 ("  --permanent-msg-ids                  use permanent msg ids\n");
  FUNC1 ("  --permanent-peer-ids                 use permanent peer ids\n");

  FUNC0 (1);
}