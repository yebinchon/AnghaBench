
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* zdm_msg; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;
typedef int ssize_t ;
struct TYPE_7__ {int pl_lock; int pl_list; } ;


 int STDOUT_FILENO ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strlen (char const*) ;
 int write (int ,char const*,int) ;
 TYPE_2__ zfs_dbgmsgs ;

void
zfs_dbgmsg_print(const char *tag)
{
 ssize_t ret __attribute__((unused));





 ret = write(STDOUT_FILENO, "ZFS_DBGMSG(", 11);
 ret = write(STDOUT_FILENO, tag, strlen(tag));
 ret = write(STDOUT_FILENO, ") START:\n", 9);

 mutex_enter(&zfs_dbgmsgs.pl_lock);
 for (zfs_dbgmsg_t *zdm = list_head(&zfs_dbgmsgs.pl_list); zdm != ((void*)0);
     zdm = list_next(&zfs_dbgmsgs.pl_list, zdm)) {
  ret = write(STDOUT_FILENO, zdm->zdm_msg,
      strlen(zdm->zdm_msg));
  ret = write(STDOUT_FILENO, "\n", 1);
 }

 ret = write(STDOUT_FILENO, "ZFS_DBGMSG(", 11);
 ret = write(STDOUT_FILENO, tag, strlen(tag));
 ret = write(STDOUT_FILENO, ") END\n", 6);

 mutex_exit(&zfs_dbgmsgs.pl_lock);
}
