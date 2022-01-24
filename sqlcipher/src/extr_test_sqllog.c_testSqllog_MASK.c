#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct SLConn {scalar_t__ fd; int /*<<< orphan*/ * db; scalar_t__ iLog; } ;
typedef  int /*<<< orphan*/  sqlite3_mutex ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {scalar_t__ bRec; int nConn; int /*<<< orphan*/ * mutex; struct SLConn* aConn; int /*<<< orphan*/  iNextLog; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  SQLITE_MUTEX_STATIC_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct SLConn*,struct SLConn*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct SLConn*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct SLConn*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sqllogglobal ; 
 int /*<<< orphan*/  FUNC10 (struct SLConn*,char const*) ; 

__attribute__((used)) static void FUNC11(void *pCtx, sqlite3 *db, const char *zSql, int eType){
  struct SLConn *p = 0;
  sqlite3_mutex *master = FUNC3(SQLITE_MUTEX_STATIC_MASTER);

  FUNC0( eType==0 || eType==1 || eType==2 );
  FUNC0( (eType==2)==(zSql==0) );

  /* This is a database open command. */
  if( eType==0 ){
    FUNC4(master);
    if( sqllogglobal.mutex==0 ){
      sqllogglobal.mutex = FUNC3(SQLITE_MUTEX_RECURSIVE);
    }
    FUNC6(master);

    FUNC4(sqllogglobal.mutex);
    if( sqllogglobal.bRec==0 && FUNC9(db) ){

      FUNC4(master);
      p = &sqllogglobal.aConn[sqllogglobal.nConn++];
      p->fd = 0;
      p->db = db;
      p->iLog = sqllogglobal.iNextLog++;
      FUNC6(master);

      /* Open the log and take a copy of the main database file */
      FUNC8(p);
      if( p->fd ) FUNC7(p, "main", 0);
    }
    FUNC6(sqllogglobal.mutex);
  }

  else{

    int i;
    for(i=0; i<sqllogglobal.nConn; i++){
      p = &sqllogglobal.aConn[i];
      if( p->db==db ) break;
    }

    /* A database handle close command */
    if( eType==2 ){
      FUNC4(master);
      if( i<sqllogglobal.nConn ){
        if( p->fd ) FUNC1(p->fd);
        p->db = 0;
        p->fd = 0;
        sqllogglobal.nConn--;
      }

      if( sqllogglobal.nConn==0 ){
        FUNC5(sqllogglobal.mutex);
        sqllogglobal.mutex = 0;
      }else if( i<sqllogglobal.nConn ){
        int nShift = &sqllogglobal.aConn[sqllogglobal.nConn] - p;
        if( nShift>0 ){
          FUNC2(p, &p[1], nShift*sizeof(struct SLConn));
        }
      }
      FUNC6(master);

    /* An ordinary SQL command. */
    }else if( i<sqllogglobal.nConn && p->fd ){
      FUNC4(sqllogglobal.mutex);
      if( sqllogglobal.bRec==0 ){
        FUNC10(p, zSql);
      }
      FUNC6(sqllogglobal.mutex);
    }
  }
}