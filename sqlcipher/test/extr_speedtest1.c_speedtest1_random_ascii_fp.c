
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int speedtest1_random () ;
 int sqlite3_snprintf (int,char*,char*,int,int,int) ;

void speedtest1_random_ascii_fp(char *zFP){
  int x = speedtest1_random();
  int y = speedtest1_random();
  int z;
  z = y%10;
  if( z<0 ) z = -z;
  y /= 10;
  sqlite3_snprintf(100,zFP,"%d.%de%d",y,z,x%200);
}
