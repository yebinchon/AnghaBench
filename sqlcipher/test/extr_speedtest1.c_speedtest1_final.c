
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTotal; int bSqlOnly; } ;


 char* NAMEWIDTH ;
 TYPE_1__ g ;
 int printf (char*,char*,int,int,int) ;
 int zDots ;

void speedtest1_final(void){
  if( !g.bSqlOnly ){
    printf("       TOTAL%.*s %4d.%03ds\n", NAMEWIDTH-5, zDots,
           (int)(g.iTotal/1000), (int)(g.iTotal%1000));
  }
}
