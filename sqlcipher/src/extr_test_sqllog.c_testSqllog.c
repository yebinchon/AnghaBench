
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SLConn {scalar_t__ fd; int * db; scalar_t__ iLog; } ;
typedef int sqlite3_mutex ;
typedef int sqlite3 ;
struct TYPE_2__ {scalar_t__ bRec; int nConn; int * mutex; struct SLConn* aConn; int iNextLog; } ;


 int SQLITE_MUTEX_RECURSIVE ;
 int SQLITE_MUTEX_STATIC_MASTER ;
 int assert (int) ;
 int fclose (scalar_t__) ;
 int memmove (struct SLConn*,struct SLConn*,int) ;
 void* sqlite3_mutex_alloc (int ) ;
 int sqlite3_mutex_enter (int *) ;
 int sqlite3_mutex_free (int *) ;
 int sqlite3_mutex_leave (int *) ;
 int sqllogCopydb (struct SLConn*,char*,int ) ;
 int sqllogOpenlog (struct SLConn*) ;
 scalar_t__ sqllogTraceDb (int *) ;
 TYPE_1__ sqllogglobal ;
 int testSqllogStmt (struct SLConn*,char const*) ;

__attribute__((used)) static void testSqllog(void *pCtx, sqlite3 *db, const char *zSql, int eType){
  struct SLConn *p = 0;
  sqlite3_mutex *master = sqlite3_mutex_alloc(SQLITE_MUTEX_STATIC_MASTER);

  assert( eType==0 || eType==1 || eType==2 );
  assert( (eType==2)==(zSql==0) );


  if( eType==0 ){
    sqlite3_mutex_enter(master);
    if( sqllogglobal.mutex==0 ){
      sqllogglobal.mutex = sqlite3_mutex_alloc(SQLITE_MUTEX_RECURSIVE);
    }
    sqlite3_mutex_leave(master);

    sqlite3_mutex_enter(sqllogglobal.mutex);
    if( sqllogglobal.bRec==0 && sqllogTraceDb(db) ){

      sqlite3_mutex_enter(master);
      p = &sqllogglobal.aConn[sqllogglobal.nConn++];
      p->fd = 0;
      p->db = db;
      p->iLog = sqllogglobal.iNextLog++;
      sqlite3_mutex_leave(master);


      sqllogOpenlog(p);
      if( p->fd ) sqllogCopydb(p, "main", 0);
    }
    sqlite3_mutex_leave(sqllogglobal.mutex);
  }

  else{

    int i;
    for(i=0; i<sqllogglobal.nConn; i++){
      p = &sqllogglobal.aConn[i];
      if( p->db==db ) break;
    }


    if( eType==2 ){
      sqlite3_mutex_enter(master);
      if( i<sqllogglobal.nConn ){
        if( p->fd ) fclose(p->fd);
        p->db = 0;
        p->fd = 0;
        sqllogglobal.nConn--;
      }

      if( sqllogglobal.nConn==0 ){
        sqlite3_mutex_free(sqllogglobal.mutex);
        sqllogglobal.mutex = 0;
      }else if( i<sqllogglobal.nConn ){
        int nShift = &sqllogglobal.aConn[sqllogglobal.nConn] - p;
        if( nShift>0 ){
          memmove(p, &p[1], nShift*sizeof(struct SLConn));
        }
      }
      sqlite3_mutex_leave(master);


    }else if( i<sqllogglobal.nConn && p->fd ){
      sqlite3_mutex_enter(sqllogglobal.mutex);
      if( sqllogglobal.bRec==0 ){
        testSqllogStmt(p, zSql);
      }
      sqlite3_mutex_leave(sqllogglobal.mutex);
    }
  }
}
