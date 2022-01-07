
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ busy; scalar_t__ zFilename; scalar_t__ zArg; int opnum; scalar_t__ xOp; } ;
typedef TYPE_1__ Thread ;


 int sqlite3_free (scalar_t__) ;
 int test_thread_wait (TYPE_1__*) ;

__attribute__((used)) static void test_stop_thread(Thread *p){
  test_thread_wait(p);
  p->xOp = 0;
  p->opnum++;
  test_thread_wait(p);
  sqlite3_free(p->zArg);
  p->zArg = 0;
  sqlite3_free(p->zFilename);
  p->zFilename = 0;
  p->busy = 0;
}
