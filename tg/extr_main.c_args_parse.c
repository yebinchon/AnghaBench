
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; int member_3; int member_2; int const member_1; } ;


 int TLS ;
 int accept_any_tcp ;
 int alert_sound ;
 int allow_weak_random ;
 int assert (int) ;
 void* atoi (void*) ;
 int binlog_enabled ;
 void* bot_hash ;
 int bot_mode ;
 int config_filename ;
 int daemonize ;
 int disable_auto_accept ;
 int disable_colors ;
 int disable_link_preview ;
 int disable_output ;
 int enable_json ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 int ipv6_enabled ;
 void* log_level ;
 void* logname ;
 void* lua_file ;
 int msg_num_mode ;

 void* optarg ;

 int permanent_msg_id_mode ;
 int permanent_peer_id_mode ;
 void* port ;
 void* prefix ;
 void* python_file ;
 int readline_disabled ;

 int reset_authorization ;
 int set_default_username (void*) ;
 void* set_group_name ;
 void* set_user_name ;
 void* start_command ;
 void* strdup (void*) ;
 int strlen (void*) ;
 int sync_from_start ;
 int * tgl_allocator ;
 int tgl_allocator_debug ;
 int tgl_incr_verbosity (int ) ;
 int tgl_set_rsa_key (int ,void*) ;
 int tgl_state_alloc () ;
 int tstrdup (void*) ;
 void* unix_socket ;
 int usage () ;
 int use_ids ;
 int verbosity ;
 int wait_dialog_list ;

void args_parse (int argc, char **argv) {
  TLS = tgl_state_alloc ();

  static struct option long_options[] = {
    {"debug-allocator", 130, 0, 1000 },
    {"phone", 128, 0, 'u'},
    {"rsa-key", 128, 0, 'k'},
    {"verbosity", 130, 0, 'v'},
    {"enable-msg-id", 130, 0, 'N'},
    {"log-level", 128, 0, 'l'},
    {"sync-from-start", 130, 0, 'f'},
    {"disable-auto-accept", 130, 0, 'E'},
    {"allow-weak-random", 130, 0, 'w'},



    {"wait-dialog-list", 130, 0, 'W'},
    {"disable-colors", 130, 0, 'C'},
    {"disable-readline", 130, 0, 'R'},
    {"alert", 130, 0, 'A'},
    {"daemonize", 130, 0, 'd'},
    {"logname", 128, 0, 'L'},
    {"username", 128, 0, 'U'},
    {"groupname", 128, 0, 'G'},
    {"disable-output", 130, 0, 'D'},
    {"reset-authorization", 130, 0, 'q'},
    {"tcp-port", 128, 0, 'P'},
    {"unix-socket", 128, 0, 'S'},
    {"exec", 128, 0, 'e'},
    {"disable-names", 130, 0, 'I'},
    {"enable-ipv6", 130, 0, '6'},
    {"bot", 129, 0, 'b'},
    {"help", 130, 0, 'h'},
    {"accept-any-tcp", 130, 0, 1001},
    {"disable-link-preview", 130, 0, 1002},
    {"json", 130, 0, 1003},
    {"python-script", 128, 0, 'Z'},
    {"permanent-msg-ids", 130, 0, 1004},
    {"permanent-peer-ids", 130, 0, 1005},
    {0, 0, 0, 0 }
  };



  int opt = 0;
  while ((opt = getopt_long (argc, argv, "u:hk:vNl:fEwWCRAdL:DU:G:qP:S:e:I6b"
  , long_options, ((void*)0)

  )) != -1) {
    switch (opt) {
    case 'b':
      bot_mode ++;
      if (optarg) {
        bot_hash = optarg;
      }
      break;
    case 1000:
      tgl_allocator = &tgl_allocator_debug;
      break;
    case 1001:
      accept_any_tcp = 1;
      break;
    case 'u':
      set_default_username (optarg);
      break;
    case 'k':

      tgl_set_rsa_key (TLS, optarg);
      break;
    case 'v':
      tgl_incr_verbosity (TLS);
      verbosity ++;
      break;
    case 'N':
      msg_num_mode ++;
      break;
    case 'l':
      log_level = atoi (optarg);
      break;
    case 'f':
      sync_from_start = 1;
      break;
    case 'E':
      disable_auto_accept = 1;
      break;
    case 'w':
      allow_weak_random = 1;
      break;





    case 'W':
      wait_dialog_list = 1;
      break;





    case 'C':
      disable_colors ++;
      break;
    case 'R':
      readline_disabled ++;
      break;
    case 'A':
      alert_sound = 1;
      break;
    case 'd':
      daemonize ++;
      break;
    case 'L':
      logname = optarg;
      break;
    case 'U':
      set_user_name = optarg;
      break;
    case 'G':
      set_group_name = optarg;
      break;
    case 'D':
      disable_output ++;
      break;
    case 'q':
      reset_authorization ++;
      break;
    case 'P':
      port = atoi (optarg);
      break;
    case 'S':
      unix_socket = optarg;
      break;
    case 'e':
      start_command = optarg;
      break;
    case 'I':
      use_ids ++;
      break;
    case '6':
      ipv6_enabled = 1;
      break;
    case 1002:
      disable_link_preview = 2;
      break;
    case 1003:
      enable_json = 1;
      break;
    case 1004:
      permanent_msg_id_mode = 1;
      break;
    case 1005:
      permanent_peer_id_mode = 1;
      break;
    case 'h':
    default:
      usage ();
      break;
    }
  }
}
