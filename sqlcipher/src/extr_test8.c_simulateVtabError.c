
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zErrMsg; } ;
struct TYPE_5__ {TYPE_1__ base; int interp; int zTableName; } ;
typedef TYPE_2__ echo_vtab ;


 int TCL_GLOBAL_ONLY ;
 char* Tcl_GetVar (int ,char*,int ) ;
 int sqlite3_mprintf (char*,char const*) ;
 int sqlite3_snprintf (int,char*,char*,char const*,int ) ;

__attribute__((used)) static int simulateVtabError(echo_vtab *p, const char *zMethod){
  const char *zErr;
  char zVarname[128];
  zVarname[127] = '\0';
  sqlite3_snprintf(127, zVarname, "echo_module_fail(%s,%s)", zMethod, p->zTableName);
  zErr = Tcl_GetVar(p->interp, zVarname, TCL_GLOBAL_ONLY);
  if( zErr ){
    p->base.zErrMsg = sqlite3_mprintf("echo-vtab-error: %s", zErr);
  }
  return (zErr!=0);
}
