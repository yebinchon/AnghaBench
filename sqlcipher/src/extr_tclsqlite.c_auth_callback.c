
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Tcl_DString ;
struct TYPE_2__ {int interp; int zAuth; scalar_t__ disableAuth; } ;
typedef TYPE_1__ SqliteDb ;
 int SQLITE_DENY ;
 int SQLITE_IGNORE ;

 int SQLITE_OK ;
 int TCL_OK ;
 int Tcl_DStringAppend (int *,int ,int) ;
 int Tcl_DStringAppendElement (int *,char const*) ;
 int Tcl_DStringFree (int *) ;
 int Tcl_DStringInit (int *) ;
 int Tcl_DStringValue (int *) ;
 char* Tcl_GetStringResult (int ) ;
 int Tcl_GlobalEval (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int auth_callback(
  void *pArg,
  int code,
  const char *zArg1,
  const char *zArg2,
  const char *zArg3,
  const char *zArg4



){
  const char *zCode;
  Tcl_DString str;
  int rc;
  const char *zReply;




  SqliteDb *pDb = (SqliteDb*)pArg;
  if( pDb->disableAuth ) return SQLITE_OK;




  switch( code ){
    case 158 : zCode="SQLITE_COPY"; break;
    case 157 : zCode="SQLITE_CREATE_INDEX"; break;
    case 156 : zCode="SQLITE_CREATE_TABLE"; break;
    case 155 : zCode="SQLITE_CREATE_TEMP_INDEX"; break;
    case 154 : zCode="SQLITE_CREATE_TEMP_TABLE"; break;
    case 153: zCode="SQLITE_CREATE_TEMP_TRIGGER"; break;
    case 152 : zCode="SQLITE_CREATE_TEMP_VIEW"; break;
    case 151 : zCode="SQLITE_CREATE_TRIGGER"; break;
    case 150 : zCode="SQLITE_CREATE_VIEW"; break;
    case 148 : zCode="SQLITE_DELETE"; break;
    case 146 : zCode="SQLITE_DROP_INDEX"; break;
    case 145 : zCode="SQLITE_DROP_TABLE"; break;
    case 144 : zCode="SQLITE_DROP_TEMP_INDEX"; break;
    case 143 : zCode="SQLITE_DROP_TEMP_TABLE"; break;
    case 142 : zCode="SQLITE_DROP_TEMP_TRIGGER"; break;
    case 141 : zCode="SQLITE_DROP_TEMP_VIEW"; break;
    case 140 : zCode="SQLITE_DROP_TRIGGER"; break;
    case 139 : zCode="SQLITE_DROP_VIEW"; break;
    case 136 : zCode="SQLITE_INSERT"; break;
    case 135 : zCode="SQLITE_PRAGMA"; break;
    case 134 : zCode="SQLITE_READ"; break;
    case 130 : zCode="SQLITE_SELECT"; break;
    case 129 : zCode="SQLITE_TRANSACTION"; break;
    case 128 : zCode="SQLITE_UPDATE"; break;
    case 159 : zCode="SQLITE_ATTACH"; break;
    case 147 : zCode="SQLITE_DETACH"; break;
    case 161 : zCode="SQLITE_ALTER_TABLE"; break;
    case 132 : zCode="SQLITE_REINDEX"; break;
    case 160 : zCode="SQLITE_ANALYZE"; break;
    case 149 : zCode="SQLITE_CREATE_VTABLE"; break;
    case 138 : zCode="SQLITE_DROP_VTABLE"; break;
    case 137 : zCode="SQLITE_FUNCTION"; break;
    case 131 : zCode="SQLITE_SAVEPOINT"; break;
    case 133 : zCode="SQLITE_RECURSIVE"; break;
    default : zCode="????"; break;
  }
  Tcl_DStringInit(&str);
  Tcl_DStringAppend(&str, pDb->zAuth, -1);
  Tcl_DStringAppendElement(&str, zCode);
  Tcl_DStringAppendElement(&str, zArg1 ? zArg1 : "");
  Tcl_DStringAppendElement(&str, zArg2 ? zArg2 : "");
  Tcl_DStringAppendElement(&str, zArg3 ? zArg3 : "");
  Tcl_DStringAppendElement(&str, zArg4 ? zArg4 : "");



  rc = Tcl_GlobalEval(pDb->interp, Tcl_DStringValue(&str));
  Tcl_DStringFree(&str);
  zReply = rc==TCL_OK ? Tcl_GetStringResult(pDb->interp) : "SQLITE_DENY";
  if( strcmp(zReply,"SQLITE_OK")==0 ){
    rc = SQLITE_OK;
  }else if( strcmp(zReply,"SQLITE_DENY")==0 ){
    rc = SQLITE_DENY;
  }else if( strcmp(zReply,"SQLITE_IGNORE")==0 ){
    rc = SQLITE_IGNORE;
  }else{
    rc = 999;
  }
  return rc;
}
