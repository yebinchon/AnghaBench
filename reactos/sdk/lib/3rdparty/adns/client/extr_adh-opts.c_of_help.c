
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 int errno ;
 scalar_t__ fclose (int ) ;
 int printusage () ;
 int quitnow (int ) ;
 int stdout ;
 int sysfail (char*,int ) ;

void of_help(const struct optioninfo *oi, const char *arg, const char *arg2) {
  printusage();
  if (fclose(stdout)) sysfail("finish writing output",errno);
  quitnow(0);
}
