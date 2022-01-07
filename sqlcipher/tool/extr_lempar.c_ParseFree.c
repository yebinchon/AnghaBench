
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ParseFinalize (void*) ;
 void stub1 (void*) ;

void ParseFree(
  void *p,
  void (*freeProc)(void*)
){

  if( p==0 ) return;

  ParseFinalize(p);
  (*freeProc)(p);
}
