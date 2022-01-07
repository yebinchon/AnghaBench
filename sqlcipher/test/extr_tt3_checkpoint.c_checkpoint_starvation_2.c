
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nMaxFrame; int member_1; int member_0; } ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ Error ;
typedef TYPE_2__ CheckpointStarvationCtx ;


 scalar_t__ CHECKPOINT_STARVATION_FRAMELIMIT ;
 int SQLITE_CHECKPOINT_RESTART ;
 int checkpoint_starvation_main (int,TYPE_2__*) ;
 int print_and_free_err (TYPE_1__*) ;
 int test_error (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static void checkpoint_starvation_2(int nMs){
  Error err = {0};
  CheckpointStarvationCtx ctx = { SQLITE_CHECKPOINT_RESTART, 0 };
  checkpoint_starvation_main(nMs, &ctx);
  if( ctx.nMaxFrame>CHECKPOINT_STARVATION_FRAMELIMIT+10 ){
    test_error(&err, "WAL grew too large - %d frames", ctx.nMaxFrame);
  }
  print_and_free_err(&err);
}
