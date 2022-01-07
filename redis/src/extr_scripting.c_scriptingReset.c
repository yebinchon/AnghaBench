
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scriptingInit (int ) ;
 int scriptingRelease () ;

void scriptingReset(void) {
    scriptingRelease();
    scriptingInit(0);
}
