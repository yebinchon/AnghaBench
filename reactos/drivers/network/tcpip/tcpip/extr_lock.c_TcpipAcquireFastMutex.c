
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PFAST_MUTEX ;


 int ExAcquireFastMutex (int ) ;

VOID TcpipAcquireFastMutex( PFAST_MUTEX Mutex ) {
    ExAcquireFastMutex( Mutex );
}
