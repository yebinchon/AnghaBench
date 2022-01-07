
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BMK_timedFnState_t ;


 int free (int *) ;

void BMK_freeTimedFnState(BMK_timedFnState_t* state) { free(state); }
