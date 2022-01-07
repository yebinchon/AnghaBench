
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_snprintf (int,char*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void finalHash(unsigned int *a, char *z){
  a[3] += a[1] + a[4] + a[0];
  a[4] += a[2] + a[3];
  sqlite3_snprintf(17, z, "%08x%08x", a[3], a[4]);
}
