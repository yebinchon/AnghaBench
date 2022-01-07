
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NET_CMD_ARG_HOST ;
 char* NET_CMD_PATH ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int libzfs_run_process (char*,char**,int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
smb_disable_share_one(const char *sharename)
{
 int rc;
 char *argv[7];


 argv[0] = NET_CMD_PATH;
 argv[1] = (char *)"-S";
 argv[2] = NET_CMD_ARG_HOST;
 argv[3] = (char *)"usershare";
 argv[4] = (char *)"delete";
 argv[5] = strdup(sharename);
 argv[6] = ((void*)0);

 rc = libzfs_run_process(argv[0], argv, 0);
 if (rc < 0)
  return (SA_SYSTEM_ERR);
 else
  return (SA_OK);
}
