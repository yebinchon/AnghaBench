
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysfail (char*) ;

__attribute__((used)) static void outputerr(void) { sysfail("write to stdout"); }
