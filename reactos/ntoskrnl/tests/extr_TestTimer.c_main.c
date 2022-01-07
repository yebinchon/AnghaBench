
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 int QueryPerformanceFrequency (TYPE_1__*) ;
 scalar_t__ _kbhit () ;
 int getchar () ;
 int printf (char*,...) ;

void main ( int argc, char** argv, char** environ )
{
 LARGE_INTEGER liFrequency;
 LARGE_INTEGER liStartTime;
 LARGE_INTEGER liCurrentTime;

 QueryPerformanceFrequency ( &liFrequency );
 printf ( "HIGH RESOLUTION PERFOMANCE COUNTER Frequency = %I64d CLOCKS IN SECOND\n",
      liFrequency.QuadPart );


 if (liFrequency.QuadPart == 0)
 {
 printf("Your computer does not support High Resolution Performance counter\n");
 return;
 }

 printf ( "Press <ENTER> to start test...\n" );
 getchar();

 printf ( "\nPress any key to quit test\n\n" );
 QueryPerformanceCounter ( &liStartTime );
 for (;;)
 {
 QueryPerformanceCounter ( &liCurrentTime );
 printf("Elapsed Time : %8.6f mSec\r",
          ((double)( (liCurrentTime.QuadPart - liStartTime.QuadPart)* (double)1000.0/(double)liFrequency.QuadPart )) );
 if (_kbhit())
  break;
 }


}
