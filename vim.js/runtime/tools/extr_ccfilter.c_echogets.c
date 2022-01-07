
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINELENGTH ;
 char* fgets (char*,int ,int ) ;
 int fputs (char* const,int ) ;
 int stderr ;
 int stdin ;

char *echogets(char *s, int echo) {
 char * const retval=fgets(s, LINELENGTH, stdin);
 if (echo!=0 && retval!=((void*)0)) {
  fputs(retval, stderr);
 }
 return retval;
}
