
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ connected; scalar_t__ loggedIn; int ctrlTimeout; } ;


 int FTPCloseHost (TYPE_1__*) ;
 int RunBatchIfNeeded (TYPE_1__*) ;
 int SaveUnsavedBookmark () ;
 TYPE_1__ gConn ;

void
CloseHost(void)
{
 if (gConn.connected != 0) {
  if (gConn.loggedIn != 0) {
   SaveUnsavedBookmark();
  }
  RunBatchIfNeeded(&gConn);
 }
 gConn.ctrlTimeout = 3;
 (void) FTPCloseHost(&gConn);
}
