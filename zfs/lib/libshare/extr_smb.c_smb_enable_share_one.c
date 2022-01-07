
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int comment ;


 char* NET_CMD_ARG_HOST ;
 char* NET_CMD_PATH ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int SMB_COMMENT_MAX ;
 int SMB_NAME_MAX ;
 int libzfs_run_process (char*,char**,int ) ;
 int smb_retrieve_shares () ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int
smb_enable_share_one(const char *sharename, const char *sharepath)
{
 char *argv[10], *pos;
 char name[SMB_NAME_MAX], comment[SMB_COMMENT_MAX];
 int rc;


 strlcpy(name, sharename, sizeof (name));
 name [sizeof (name)-1] = '\0';

 pos = name;
 while (*pos != '\0') {
  switch (*pos) {
  case '/':
  case '-':
  case ':':
  case ' ':
   *pos = '_';
  }

  ++pos;
 }





 snprintf(comment, sizeof (comment), "Comment: %s", sharepath);

 argv[0] = NET_CMD_PATH;
 argv[1] = (char *)"-S";
 argv[2] = NET_CMD_ARG_HOST;
 argv[3] = (char *)"usershare";
 argv[4] = (char *)"add";
 argv[5] = (char *)name;
 argv[6] = (char *)sharepath;
 argv[7] = (char *)comment;
 argv[8] = "Everyone:F";
 argv[9] = ((void*)0);

 rc = libzfs_run_process(argv[0], argv, 0);
 if (rc < 0)
  return (SA_SYSTEM_ERR);


 (void) smb_retrieve_shares();

 return (SA_OK);
}
