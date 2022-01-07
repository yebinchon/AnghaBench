
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BtCursor ;


 int ROUND8 (int) ;

int sqlite3BtreeCursorSize(void){
  return ROUND8(sizeof(BtCursor));
}
