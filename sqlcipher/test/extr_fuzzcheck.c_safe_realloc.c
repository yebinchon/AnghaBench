
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatalError (char*,int) ;
 void* realloc (void*,int) ;

__attribute__((used)) static void *safe_realloc(void *pOld, int szNew){
  void *pNew = realloc(pOld, szNew<=0 ? 1 : szNew);
  if( pNew==0 ) fatalError("unable to realloc for %d bytes", szNew);
  return pNew;
}
