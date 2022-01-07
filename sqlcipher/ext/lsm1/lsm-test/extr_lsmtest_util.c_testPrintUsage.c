
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * argv; } ;


 TYPE_1__ g ;
 int testPrintError (char*,int ,int ,char const*) ;

void testPrintUsage(const char *zArgs){
  testPrintError("Usage: %s %s %s\n", g.argv[0], g.argv[1], zArgs);
}
