
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {int do_verbose; int do_force; int do_foreground; int do_memlock; int do_zero; int state_file; int path; int pid_file; int zedlet_dir; int conf_file; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int _zed_conf_display_help (char*,int ) ;
 int _zed_conf_display_license () ;
 int _zed_conf_display_version () ;
 int _zed_conf_parse_path (int *,int ) ;
 int fprintf (int ,char*,char*,char*,char) ;
 int getopt (int,char**,char const* const) ;
 int optarg ;
 scalar_t__ opterr ;
 char optopt ;
 int stderr ;
 int zed_log_die (char*) ;

void
zed_conf_parse_opts(struct zed_conf *zcp, int argc, char **argv)
{
 const char * const opts = ":hLVc:d:p:P:s:vfFMZ";
 int opt;

 if (!zcp || !argv || !argv[0])
  zed_log_die("Failed to parse options: Internal error");

 opterr = 0;

 while ((opt = getopt(argc, argv, opts)) != -1) {
  switch (opt) {
  case 'h':
   _zed_conf_display_help(argv[0], EXIT_SUCCESS);
   break;
  case 'L':
   _zed_conf_display_license();
   break;
  case 'V':
   _zed_conf_display_version();
   break;
  case 'c':
   _zed_conf_parse_path(&zcp->conf_file, optarg);
   break;
  case 'd':
   _zed_conf_parse_path(&zcp->zedlet_dir, optarg);
   break;
  case 'p':
   _zed_conf_parse_path(&zcp->pid_file, optarg);
   break;
  case 'P':
   _zed_conf_parse_path(&zcp->path, optarg);
   break;
  case 's':
   _zed_conf_parse_path(&zcp->state_file, optarg);
   break;
  case 'v':
   zcp->do_verbose = 1;
   break;
  case 'f':
   zcp->do_force = 1;
   break;
  case 'F':
   zcp->do_foreground = 1;
   break;
  case 'M':
   zcp->do_memlock = 1;
   break;
  case 'Z':
   zcp->do_zero = 1;
   break;
  case '?':
  default:
   if (optopt == '?')
    _zed_conf_display_help(argv[0], EXIT_SUCCESS);

   fprintf(stderr, "%s: %s '-%c'\n\n", argv[0],
       "Invalid option", optopt);
   _zed_conf_display_help(argv[0], EXIT_FAILURE);
   break;
  }
 }
}
