
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zBuf ;
struct TYPE_8__ {int zVfsName; } ;
typedef TYPE_2__ vfstrace_info ;
struct TYPE_9__ {int zFName; TYPE_6__* pReal; TYPE_2__* pInfo; } ;
typedef TYPE_3__ vfstrace_file ;
typedef int sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_10__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int (* xFileControl ) (TYPE_6__*,int,void*) ;} ;
 int SQLITE_OK ;

 char* sqlite3_mprintf (char*,int ,char*) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 int stub1 (TYPE_6__*,int,void*) ;
 int vfstrace_print_errcode (TYPE_2__*,char*,int) ;
 int vfstrace_printf (TYPE_2__*,char*,int ,int ,char*,...) ;

__attribute__((used)) static int vfstraceFileControl(sqlite3_file *pFile, int op, void *pArg){
  vfstrace_file *p = (vfstrace_file *)pFile;
  vfstrace_info *pInfo = p->pInfo;
  int rc;
  char zBuf[100];
  char *zOp;
  switch( op ){
    case 139: zOp = "LOCKSTATE"; break;
    case 130: zOp = "GET_LOCKPROXYFILE"; break;
    case 128: zOp = "SET_LOCKPROXYFILE"; break;
    case 129: zOp = "LAST_ERRNO"; break;
    case 135: {
      sqlite3_snprintf(sizeof(zBuf), zBuf, "SIZE_HINT,%lld",
                       *(sqlite3_int64*)pArg);
      zOp = zBuf;
      break;
    }
    case 141: {
      sqlite3_snprintf(sizeof(zBuf), zBuf, "CHUNK_SIZE,%d", *(int*)pArg);
      zOp = zBuf;
      break;
    }
    case 140: zOp = "FILE_POINTER"; break;
    case 134: zOp = "SYNC_OMITTED"; break;
    case 131: zOp = "WIN32_AV_RETRY"; break;
    case 137: zOp = "PERSIST_WAL"; break;
    case 138: zOp = "OVERWRITE"; break;
    case 132: zOp = "VFSNAME"; break;
    case 133: zOp = "TEMPFILENAME"; break;
    case 0xca093fa0: zOp = "DB_UNCHANGED"; break;
    case 136: {
      const char *const* a = (const char*const*)pArg;
      sqlite3_snprintf(sizeof(zBuf), zBuf, "PRAGMA,[%s,%s]",a[1],a[2]);
      zOp = zBuf;
      break;
    }
    default: {
      sqlite3_snprintf(sizeof zBuf, zBuf, "%d", op);
      zOp = zBuf;
      break;
    }
  }
  vfstrace_printf(pInfo, "%s.xFileControl(%s,%s)",
                  pInfo->zVfsName, p->zFName, zOp);
  rc = p->pReal->pMethods->xFileControl(p->pReal, op, pArg);
  vfstrace_print_errcode(pInfo, " -> %s\n", rc);
  if( op==132 && rc==SQLITE_OK ){
    *(char**)pArg = sqlite3_mprintf("vfstrace.%s/%z",
                                    pInfo->zVfsName, *(char**)pArg);
  }
  if( (op==136 || op==133)
   && rc==SQLITE_OK && *(char**)pArg ){
    vfstrace_printf(pInfo, "%s.xFileControl(%s,%s) returns %s",
                    pInfo->zVfsName, p->zFName, zOp, *(char**)pArg);
  }
  return rc;
}
