
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_12__ {unsigned char bEnabled; unsigned int szChunk; int bTruncate; } ;
typedef TYPE_3__ multiplexGroup ;
struct TYPE_13__ {TYPE_3__* pGroup; } ;
typedef TYPE_4__ multiplexConn ;
struct TYPE_14__ {int isInitialized; } ;
struct TYPE_10__ {int (* xFileControl ) (TYPE_2__*,int,void*) ;} ;


 int MAX_PAGE_SIZE ;



 int SQLITE_ERROR ;



 int SQLITE_FCNTL_VFSNAME ;
 int SQLITE_MISUSE ;
 int SQLITE_OK ;
 TYPE_9__ gMultiplex ;
 TYPE_2__* multiplexSubOpen (TYPE_3__*,int ,int*,int *,int ) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_stricmp (char*,char*) ;
 int stub1 (TYPE_2__*,int,void*) ;

__attribute__((used)) static int multiplexFileControl(sqlite3_file *pConn, int op, void *pArg){
  multiplexConn *p = (multiplexConn*)pConn;
  multiplexGroup *pGroup = p->pGroup;
  int rc = SQLITE_ERROR;
  sqlite3_file *pSubOpen;

  if( !gMultiplex.isInitialized ) return SQLITE_MISUSE;
  switch( op ){
    case 133:
      if( pArg ) {
        int bEnabled = *(int *)pArg;
        pGroup->bEnabled = (unsigned char)bEnabled;
        rc = SQLITE_OK;
      }
      break;
    case 132:
      if( pArg ) {
        unsigned int szChunk = *(unsigned*)pArg;
        if( szChunk<1 ){
          rc = SQLITE_MISUSE;
        }else{

          szChunk = (szChunk + (MAX_PAGE_SIZE-1));
          szChunk &= ~(MAX_PAGE_SIZE-1);
          pGroup->szChunk = szChunk;
          rc = SQLITE_OK;
        }
      }
      break;
    case 131:
      rc = SQLITE_OK;
      break;
    case 128:
    case 130:

      rc = SQLITE_OK;
      break;
    case 129: {
      char **aFcntl = (char**)pArg;







      if( aFcntl[1] && sqlite3_stricmp(aFcntl[1],"multiplex_truncate")==0 ){
        if( aFcntl[2] && aFcntl[2][0] ){
          if( sqlite3_stricmp(aFcntl[2], "on")==0
           || sqlite3_stricmp(aFcntl[2], "1")==0 ){
            pGroup->bTruncate = 1;
          }else
          if( sqlite3_stricmp(aFcntl[2], "off")==0
           || sqlite3_stricmp(aFcntl[2], "0")==0 ){
            pGroup->bTruncate = 0;
          }
        }






        aFcntl[0] = sqlite3_mprintf(pGroup->bTruncate ? "on" : "off");
        rc = SQLITE_OK;
        break;
      }


    }
    default:
      pSubOpen = multiplexSubOpen(pGroup, 0, &rc, ((void*)0), 0);
      if( pSubOpen ){
        rc = pSubOpen->pMethods->xFileControl(pSubOpen, op, pArg);
        if( op==SQLITE_FCNTL_VFSNAME && rc==SQLITE_OK ){
         *(char**)pArg = sqlite3_mprintf("multiplex/%z", *(char**)pArg);
        }
      }
      break;
  }
  return rc;
}
