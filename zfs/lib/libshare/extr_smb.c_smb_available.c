
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int F_OK ;
 int NET_CMD_PATH ;
 int SHARE_DIR ;
 int S_ISDIR (int ) ;
 scalar_t__ access (int ,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;

__attribute__((used)) static boolean_t
smb_available(void)
{
 struct stat statbuf;

 if (lstat(SHARE_DIR, &statbuf) != 0 ||
     !S_ISDIR(statbuf.st_mode))
  return (B_FALSE);

 if (access(NET_CMD_PATH, F_OK) != 0)
  return (B_FALSE);

 return (B_TRUE);
}
