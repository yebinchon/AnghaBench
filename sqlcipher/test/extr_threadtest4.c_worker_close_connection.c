
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ db; } ;
typedef TYPE_1__ WorkerInfo ;


 int sqlite3_close (scalar_t__) ;
 int worker_trace (TYPE_1__*,char*) ;

__attribute__((used)) static void worker_close_connection(WorkerInfo *p){
  if( p->db ){
    worker_trace(p, "close");
    sqlite3_close(p->db);
    p->db = 0;
  }
}
