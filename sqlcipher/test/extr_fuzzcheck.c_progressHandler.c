
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatalError (char*) ;

__attribute__((used)) static int progressHandler(void *pVdbeLimitFlag){
  if( *(int*)pVdbeLimitFlag ) fatalError("too many VDBE cycles");
  return 1;
}
