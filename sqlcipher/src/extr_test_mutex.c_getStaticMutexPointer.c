
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_mutex ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int SQLITE_MUTEX_FAST ;
 int SQLITE_MUTEX_RECURSIVE ;
 scalar_t__ Tcl_GetIndexFromObj (int *,int *,int ,char*,int ,int*) ;
 int aName ;
 int assert (int) ;
 int * counterMutexAlloc (int) ;

__attribute__((used)) static sqlite3_mutex *getStaticMutexPointer(
  Tcl_Interp *pInterp,
  Tcl_Obj *pObj
){
  int iMutex;
  if( Tcl_GetIndexFromObj(pInterp, pObj, aName, "mutex name", 0, &iMutex) ){
    return 0;
  }
  assert( iMutex!=SQLITE_MUTEX_FAST && iMutex!=SQLITE_MUTEX_RECURSIVE );
  return counterMutexAlloc(iMutex);
}
