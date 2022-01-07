
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int sqlite3_snprintf (int,char*,char*,void*) ;

__attribute__((used)) static char *ptrToText(void *p){
  static char buf[100];
  sqlite3_snprintf(sizeof(buf)-1, buf, "%p", p);
  return buf;
}
