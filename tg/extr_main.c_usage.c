
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PROGNAME ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s Usage\n", PROGNAME);

  printf ("  --phone/-u                           specify username (would not be asked during authorization)\n");
  printf ("  --rsa-key/-k                         specify location of public key (possible multiple entries)\n");
  printf ("  --verbosity/-v                       increase verbosity (0-ERROR 1-WARNIN 2-NOTICE 3+-DEBUG-levels)\n");
  printf ("  --enable-msg-id/-N                   message num mode\n");
  printf ("  --log-level/-l                       log level\n");
  printf ("  --sync-from-start/-f                 during authorization fetch all messages since registration\n");
  printf ("  --disable-auto-accept/-E             disable auto accept of encrypted chats\n");



  printf ("  --wait-dialog-list/-W                send dialog_list query and wait for answer before reading input\n");
  printf ("  --disable-colors/-C                  disable color output\n");
  printf ("  --disable-readline/-R                disable readline\n");
  printf ("  --alert/-A                           enable bell notifications\n");
  printf ("  --daemonize/-d                       daemon mode\n");
  printf ("  --logname/-L <log-name>              log file name\n");
  printf ("  --username/-U <user-name>            change uid after start\n");
  printf ("  --groupname/-G <group-name>          change gid after start\n");
  printf ("  --disable-output/-D                  disable output\n");
  printf ("  --tcp-port/-P <port>                 port to listen for input commands\n");
  printf ("  --udp-socket/-S <socket-name>        unix socket to create\n");
  printf ("  --exec/-e <commands>                 make commands end exit\n");
  printf ("  --disable-names/-I                   use user and chat IDs in updates instead of names\n");
  printf ("  --enable-ipv6/-6                     use ipv6 (may be unstable)\n");
  printf ("  --help/-h                            prints this help\n");
  printf ("  --accept-any-tcp                     accepts tcp connections from any src (only loopback by default)\n");
  printf ("  --disable-link-preview               disables server-side previews to links\n");
  printf ("  --bot/-b                             bot mode\n");






  printf ("  --permanent-msg-ids                  use permanent msg ids\n");
  printf ("  --permanent-peer-ids                 use permanent peer ids\n");

  exit (1);
}
