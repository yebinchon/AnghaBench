
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SLConn {int fd; } ;
struct TYPE_2__ {int iClock; } ;


 int fprintf (int ,char*,char const*,int ) ;
 scalar_t__ sqlite3_strnicmp (char*,char const*,int) ;
 int sqllogCopydb (struct SLConn*,int ,int) ;
 int sqllogTokenize (char const*,char const**,int*) ;
 TYPE_1__ sqllogglobal ;

__attribute__((used)) static void testSqllogStmt(struct SLConn *p, const char *zSql){
  const char *zFirst;
  int nFirst;

  sqllogTokenize(zSql, &zFirst, &nFirst);
  if( nFirst!=6 || 0!=sqlite3_strnicmp("ATTACH", zFirst, 6) ){

    fprintf(p->fd, "%s; -- clock=%d\n", zSql, sqllogglobal.iClock++);
  }else{

    sqllogCopydb(p, 0, 1);
  }
}
