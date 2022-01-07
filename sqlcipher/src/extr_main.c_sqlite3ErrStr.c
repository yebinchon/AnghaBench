
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALWAYS (int) ;
 int ArraySize (char const* const*) ;




const char *sqlite3ErrStr(int rc){
  static const char* const aMsg[] = {
                             "not an error",
                             "SQL logic error",
                             0,
                             "access permission denied",
                             "query aborted",
                             "database is locked",
                             "database table is locked",
                             "out of memory",
                             "attempt to write a readonly database",
                             "interrupted",
                             "disk I/O error",
                             "database disk image is malformed",
                             "unknown operation",
                             "database or disk is full",
                             "unable to open database file",
                             "locking protocol",
                             0,
                             "database schema has changed",
                             "string or blob too big",
                             "constraint failed",
                             "datatype mismatch",
                             "bad parameter or other API misuse",



                             0,

                             "authorization denied",
                             0,
                             "column index out of range",
                             "file is not a database",
                             "notification message",
                             "warning message",
  };
  const char *zErr = "unknown error";
  switch( rc ){
    case 130: {
      zErr = "abort due to ROLLBACK";
      break;
    }
    case 128: {
      zErr = "another row available";
      break;
    }
    case 129: {
      zErr = "no more rows available";
      break;
    }
    default: {
      rc &= 0xff;
      if( ALWAYS(rc>=0) && rc<ArraySize(aMsg) && aMsg[rc]!=0 ){
        zErr = aMsg[rc];
      }
      break;
    }
  }
  return zErr;
}
