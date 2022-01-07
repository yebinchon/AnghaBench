
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eVerbosity ;
 scalar_t__ mxCb ;
 scalar_t__ nCb ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static int progress_handler(void *pNotUsed){
  nCb++;
  if( nCb<mxCb ) return 0;
  if( eVerbosity>=1 ){
    printf("-- Progress limit of %d reached\n", mxCb);
  }
  return 1;
}
