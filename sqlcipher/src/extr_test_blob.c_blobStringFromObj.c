
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Obj ;


 char* Tcl_GetStringFromObj (int *,int*) ;

__attribute__((used)) static char *blobStringFromObj(Tcl_Obj *pObj){
  int n;
  char *z;
  z = Tcl_GetStringFromObj(pObj, &n);
  return (n ? z : 0);
}
