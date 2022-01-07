
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ rLimit; } ;
typedef TYPE_1__ fuzzer_cursor ;
typedef scalar_t__ fuzzer_cost ;



__attribute__((used)) static int fuzzerEof(sqlite3_vtab_cursor *cur){
  fuzzer_cursor *pCur = (fuzzer_cursor*)cur;
  return pCur->rLimit<=(fuzzer_cost)0;
}
