
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CmdClean (void*) ;

__attribute__((used)) static void cmd_cleanup_routine( void *p ) { CmdClean( p ); }
