
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zpc_expected_projid; int zpc_op; void* zpc_dironly; void* zpc_keep_projid; void* zpc_newline; void* zpc_recursive; void* zpc_set_flag; } ;
typedef TYPE_1__ zfs_project_control_t ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int UINT32_MAX ;
 scalar_t__ ZFS_INVALID_PROJID ;


 int ZFS_PROJECT_OP_DEFAULT ;


 int errno ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int optarg ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 scalar_t__ strtoull (int ,char**,int ) ;
 int usage (void*) ;
 int zfs_project_handle (char*,TYPE_1__*) ;

__attribute__((used)) static int
zfs_do_project(int argc, char **argv)
{
 zfs_project_control_t zpc = {
  .zpc_expected_projid = ZFS_INVALID_PROJID,
  .zpc_op = ZFS_PROJECT_OP_DEFAULT,
  .zpc_dironly = B_FALSE,
  .zpc_keep_projid = B_FALSE,
  .zpc_newline = B_TRUE,
  .zpc_recursive = B_FALSE,
  .zpc_set_flag = B_FALSE,
 };
 int ret = 0, c;

 if (argc < 2)
  usage(B_FALSE);

 while ((c = getopt(argc, argv, "0Ccdkp:rs")) != -1) {
  switch (c) {
  case '0':
   zpc.zpc_newline = B_FALSE;
   break;
  case 'C':
   if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
    (void) fprintf(stderr, gettext("cannot "
        "specify '-C' '-c' '-s' together\n"));
    usage(B_FALSE);
   }

   zpc.zpc_op = 130;
   break;
  case 'c':
   if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
    (void) fprintf(stderr, gettext("cannot "
        "specify '-C' '-c' '-s' together\n"));
    usage(B_FALSE);
   }

   zpc.zpc_op = 131;
   break;
  case 'd':
   zpc.zpc_dironly = B_TRUE;

   zpc.zpc_recursive = B_FALSE;
   break;
  case 'k':
   zpc.zpc_keep_projid = B_TRUE;
   break;
  case 'p': {
   char *endptr;

   errno = 0;
   zpc.zpc_expected_projid = strtoull(optarg, &endptr, 0);
   if (errno != 0 || *endptr != '\0') {
    (void) fprintf(stderr,
        gettext("project ID must be less than "
        "%u\n"), UINT32_MAX);
    usage(B_FALSE);
   }
   if (zpc.zpc_expected_projid >= UINT32_MAX) {
    (void) fprintf(stderr,
        gettext("invalid project ID\n"));
    usage(B_FALSE);
   }
   break;
  }
  case 'r':
   zpc.zpc_recursive = B_TRUE;

   zpc.zpc_dironly = B_FALSE;
   break;
  case 's':
   if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
    (void) fprintf(stderr, gettext("cannot "
        "specify '-C' '-c' '-s' together\n"));
    usage(B_FALSE);
   }

   zpc.zpc_set_flag = B_TRUE;
   zpc.zpc_op = 128;
   break;
  default:
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 if (zpc.zpc_op == ZFS_PROJECT_OP_DEFAULT) {
  if (zpc.zpc_expected_projid != ZFS_INVALID_PROJID)
   zpc.zpc_op = 128;
  else
   zpc.zpc_op = 129;
 }

 switch (zpc.zpc_op) {
 case 129:
  if (zpc.zpc_keep_projid) {
   (void) fprintf(stderr,
       gettext("'-k' is only valid together with '-C'\n"));
   usage(B_FALSE);
  }
  if (!zpc.zpc_newline) {
   (void) fprintf(stderr,
       gettext("'-0' is only valid together with '-c'\n"));
   usage(B_FALSE);
  }
  break;
 case 131:
  if (zpc.zpc_keep_projid) {
   (void) fprintf(stderr,
       gettext("'-k' is only valid together with '-C'\n"));
   usage(B_FALSE);
  }
  break;
 case 130:
  if (zpc.zpc_dironly) {
   (void) fprintf(stderr,
       gettext("'-d' is useless together with '-C'\n"));
   usage(B_FALSE);
  }
  if (!zpc.zpc_newline) {
   (void) fprintf(stderr,
       gettext("'-0' is only valid together with '-c'\n"));
   usage(B_FALSE);
  }
  if (zpc.zpc_expected_projid != ZFS_INVALID_PROJID) {
   (void) fprintf(stderr,
       gettext("'-p' is useless together with '-C'\n"));
   usage(B_FALSE);
  }
  break;
 case 128:
  if (zpc.zpc_dironly) {
   (void) fprintf(stderr,
       gettext("'-d' is useless for set project ID and/or "
       "inherit flag\n"));
   usage(B_FALSE);
  }
  if (zpc.zpc_keep_projid) {
   (void) fprintf(stderr,
       gettext("'-k' is only valid together with '-C'\n"));
   usage(B_FALSE);
  }
  if (!zpc.zpc_newline) {
   (void) fprintf(stderr,
       gettext("'-0' is only valid together with '-c'\n"));
   usage(B_FALSE);
  }
  break;
 default:
  ASSERT(0);
  break;
 }

 argv += optind;
 argc -= optind;
 if (argc == 0) {
  (void) fprintf(stderr,
      gettext("missing file or directory target(s)\n"));
  usage(B_FALSE);
 }

 for (int i = 0; i < argc; i++) {
  int err;

  err = zfs_project_handle(argv[i], &zpc);
  if (err && !ret)
   ret = err;
 }

 return (ret);
}
