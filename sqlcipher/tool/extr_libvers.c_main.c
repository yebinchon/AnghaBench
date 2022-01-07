
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* sqlite3_libversion () ;
 char* sqlite3_sourceid () ;

int main(int argc, char **argv){
  printf("SQLite version %s\n", sqlite3_libversion());
  printf("SQLite source  %s\n", sqlite3_sourceid());
  return 0;
}
