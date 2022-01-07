
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSM_OK ;
 int lsmIoerrBkpt () ;

__attribute__((used)) static int IOERR_WRAPPER(int rc){
  if( rc!=LSM_OK ) lsmIoerrBkpt();
  return rc;
}
