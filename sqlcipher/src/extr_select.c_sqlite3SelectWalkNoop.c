
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Walker ;
typedef int Select ;


 int UNUSED_PARAMETER2 (int *,int *) ;
 int WRC_Continue ;

int sqlite3SelectWalkNoop(Walker *NotUsed, Select *NotUsed2){
  UNUSED_PARAMETER2(NotUsed, NotUsed2);
  return WRC_Continue;
}
