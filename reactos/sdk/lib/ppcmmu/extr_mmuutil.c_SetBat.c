
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BATSET (int,int ) ;
 int d ;
 int i ;

void SetBat( int bat, int inst, int batHi, int batLo ) {
    if( inst ) {
 switch( bat ) {
     BATSET(0,i);
     BATSET(1,i);
     BATSET(2,i);
     BATSET(3,i);
 }
    } else {
 switch( bat ) {
     BATSET(0,d);
     BATSET(1,d);
     BATSET(2,d);
     BATSET(3,d);
 }
    }
    __asm__("isync\n\tsync");
}
