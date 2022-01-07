
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exits (char*) ;
 int fprint (int,char*) ;

void
usage(void)
{
 fprint(2, "usage: dwarfdump file\n");
 exits("usage");
}
