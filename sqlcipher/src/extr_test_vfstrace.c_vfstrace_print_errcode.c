
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int vfstrace_info ;
 int sqlite3_snprintf (int,char*,char*,int) ;
 int vfstrace_printf (int *,char const*,char*) ;

__attribute__((used)) static void vfstrace_print_errcode(
  vfstrace_info *pInfo,
  const char *zFormat,
  int rc
){
  char zBuf[50];
  char *zVal;
  switch( rc ){
    case 133: zVal = "SQLITE_OK"; break;
    case 166: zVal = "SQLITE_ERROR"; break;
    case 132: zVal = "SQLITE_PERM"; break;
    case 174: zVal = "SQLITE_ABORT"; break;
    case 173: zVal = "SQLITE_BUSY"; break;
    case 134: zVal = "SQLITE_NOMEM"; break;
    case 130: zVal = "SQLITE_READONLY"; break;
    case 164: zVal = "SQLITE_INTERRUPT"; break;
    case 163: zVal = "SQLITE_IOERR"; break;
    case 168: zVal = "SQLITE_CORRUPT"; break;
    case 165: zVal = "SQLITE_FULL"; break;
    case 171: zVal = "SQLITE_CANTOPEN"; break;
    case 131: zVal = "SQLITE_PROTOCOL"; break;
    case 167: zVal = "SQLITE_EMPTY"; break;
    case 128: zVal = "SQLITE_SCHEMA"; break;
    case 169: zVal = "SQLITE_CONSTRAINT"; break;
    case 137: zVal = "SQLITE_MISMATCH"; break;
    case 136: zVal = "SQLITE_MISUSE"; break;
    case 135: zVal = "SQLITE_NOLFS"; break;
    case 148: zVal = "SQLITE_IOERR_READ"; break;
    case 142: zVal = "SQLITE_IOERR_SHORT_READ"; break;
    case 139: zVal = "SQLITE_IOERR_WRITE"; break;
    case 153: zVal = "SQLITE_IOERR_FSYNC"; break;
    case 155: zVal = "SQLITE_IOERR_DIR_FSYNC"; break;
    case 141: zVal = "SQLITE_IOERR_TRUNCATE"; break;
    case 154: zVal = "SQLITE_IOERR_FSTAT"; break;
    case 140: zVal = "SQLITE_IOERR_UNLOCK"; break;
    case 149: zVal = "SQLITE_IOERR_RDLOCK"; break;
    case 157: zVal = "SQLITE_IOERR_DELETE"; break;
    case 161: zVal = "SQLITE_IOERR_BLOCKED"; break;
    case 150: zVal = "SQLITE_IOERR_NOMEM"; break;
    case 162: zVal = "SQLITE_IOERR_ACCESS"; break;
    case 160:
                               zVal = "SQLITE_IOERR_CHECKRESERVEDLOCK"; break;
    case 151: zVal = "SQLITE_IOERR_LOCK"; break;
    case 159: zVal = "SQLITE_IOERR_CLOSE"; break;
    case 156: zVal = "SQLITE_IOERR_DIR_CLOSE"; break;
    case 144: zVal = "SQLITE_IOERR_SHMOPEN"; break;
    case 143: zVal = "SQLITE_IOERR_SHMSIZE"; break;
    case 146: zVal = "SQLITE_IOERR_SHMLOCK"; break;
    case 145: zVal = "SQLITE_IOERR_SHMMAP"; break;
    case 147: zVal = "SQLITE_IOERR_SEEK"; break;
    case 152: zVal = "SQLITE_IOERR_GETTEMPPATH"; break;
    case 158: zVal = "SQLITE_IOERR_CONVPATH"; break;
    case 129: zVal = "SQLITE_READONLY_DBMOVED"; break;
    case 138: zVal = "SQLITE_LOCKED_SHAREDCACHE"; break;
    case 172: zVal = "SQLITE_BUSY_RECOVERY"; break;
    case 170: zVal = "SQLITE_CANTOPEN_NOTEMPDIR"; break;
    default: {
       sqlite3_snprintf(sizeof(zBuf), zBuf, "%d", rc);
       zVal = zBuf;
       break;
    }
  }
  vfstrace_printf(pInfo, zFormat, zVal);
}
