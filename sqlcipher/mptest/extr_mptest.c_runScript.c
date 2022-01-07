
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zError ;
typedef int zCmd ;
typedef int sqlite3_stmt ;
typedef int sResult ;
typedef int azArg ;
struct TYPE_8__ {int iTrace; int bIgnoreSqlErrors; int nTest; int db; } ;
struct TYPE_7__ {int n; int z; } ;
typedef TYPE_1__ String ;


 scalar_t__ ISSPACE (char) ;
 int MX_ARG ;
 int SQLITE_ROW ;
 int atoi (char*) ;
 int booleanValue (char*) ;
 int errorMessage (char*,int,char*,...) ;
 int evalSql (TYPE_1__*,char*) ;
 int exit (int) ;
 int extractToken (char*,int,char*,int) ;
 int filenameTail (char*) ;
 int findEnd (char*,int*) ;
 scalar_t__ findEndif (char*,int,int*) ;
 int finishScript (int,int,int) ;
 TYPE_5__ g ;
 int isDirSep (char) ;
 int isalpha (char) ;
 int logMessage (char*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int * prepareSql (char*,int,char*) ;
 char* readFile (char*) ;
 int runSql (char*,...) ;
 int sqlite3_close (int ) ;
 scalar_t__ sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_sleep (int) ;
 int sqlite3_snprintf (int,char*,char*,int,char*) ;
 int sqlite3_step (int *) ;
 scalar_t__ sqlite3_strglob (char*,int ) ;
 int startClient (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int stringFree (TYPE_1__*) ;
 int stringReset (TYPE_1__*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int test_breakpoint () ;
 int tokenLength (char*,int*) ;
 int waitForClient (int,int,char*) ;

__attribute__((used)) static void runScript(
  int iClient,
  int taskId,
  char *zScript,
  char *zFilename
){
  int lineno = 1;
  int prevLine = 1;
  int ii = 0;
  int iBegin = 0;
  int n, c, j;
  int len;
  int nArg;
  String sResult;
  char zCmd[30];
  char zError[1000];
  char azArg[MX_ARG][100];

  memset(&sResult, 0, sizeof(sResult));
  stringReset(&sResult);
  while( (c = zScript[ii])!=0 ){
    prevLine = lineno;
    len = tokenLength(zScript+ii, &lineno);
    if( ISSPACE(c) || (c=='/' && zScript[ii+1]=='*') ){
      ii += len;
      continue;
    }
    if( c!='-' || zScript[ii+1]!='-' || !isalpha(zScript[ii+2]) ){
      ii += len;
      continue;
    }


    if( ii>iBegin ){
      char *zSql = sqlite3_mprintf("%.*s", ii-iBegin, zScript+iBegin);
      evalSql(&sResult, zSql);
      sqlite3_free(zSql);
      iBegin = ii + len;
    }


    if( g.iTrace>=2 ) logMessage("%.*s", len, zScript+ii);
    n = extractToken(zScript+ii+2, len-2, zCmd, sizeof(zCmd));
    for(nArg=0; n<len-2 && nArg<MX_ARG; nArg++){
      while( n<len-2 && ISSPACE(zScript[ii+2+n]) ){ n++; }
      if( n>=len-2 ) break;
      n += extractToken(zScript+ii+2+n, len-2-n,
                        azArg[nArg], sizeof(azArg[nArg]));
    }
    for(j=nArg; j<MX_ARG; j++) azArg[j++][0] = 0;






    if( strcmp(zCmd, "sleep")==0 ){
      sqlite3_sleep(atoi(azArg[0]));
    }else







    if( strcmp(zCmd, "exit")==0 ){
      int rc = atoi(azArg[0]);
      finishScript(iClient, taskId, 1);
      if( rc==0 ) sqlite3_close(g.db);
      exit(rc);
    }else







    if( strcmp(zCmd, "testcase")==0 ){
      if( g.iTrace==1 ) logMessage("%.*s", len - 1, zScript+ii);
      stringReset(&sResult);
    }else







    if( strcmp(zCmd, "finish")==0 && iClient>0 ){
      finishScript(iClient, taskId, 1);
    }else






    if( strcmp(zCmd, "reset")==0 ){
      stringReset(&sResult);
    }else






    if( strcmp(zCmd, "match")==0 ){
      int jj;
      char *zAns = zScript+ii;
      for(jj=7; jj<len-1 && ISSPACE(zAns[jj]); jj++){}
      zAns += jj;
      if( len-jj-1!=sResult.n || strncmp(sResult.z, zAns, len-jj-1) ){
        errorMessage("line %d of %s:\nExpected [%.*s]\n     Got [%s]",
          prevLine, zFilename, len-jj-1, zAns, sResult.z);
      }
      g.nTest++;
      stringReset(&sResult);
    }else
    if( strcmp(zCmd, "glob")==0 || strcmp(zCmd, "notglob")==0 ){
      int jj;
      char *zAns = zScript+ii;
      char *zCopy;
      int isGlob = (zCmd[0]=='g');
      for(jj=9-3*isGlob; jj<len-1 && ISSPACE(zAns[jj]); jj++){}
      zAns += jj;
      zCopy = sqlite3_mprintf("%.*s", len-jj-1, zAns);
      if( (sqlite3_strglob(zCopy, sResult.z)==0)^isGlob ){
        errorMessage("line %d of %s:\nExpected [%s]\n     Got [%s]",
          prevLine, zFilename, zCopy, sResult.z);
      }
      sqlite3_free(zCopy);
      g.nTest++;
      stringReset(&sResult);
    }else






    if( strcmp(zCmd, "output")==0 ){
      logMessage("%s", sResult.z);
    }else






    if( strcmp(zCmd, "source")==0 ){
      char *zNewFile, *zNewScript;
      char *zToDel = 0;
      zNewFile = azArg[0];
      if( !isDirSep(zNewFile[0]) ){
        int k;
        for(k=(int)strlen(zFilename)-1; k>=0 && !isDirSep(zFilename[k]); k--){}
        if( k>0 ){
          zNewFile = zToDel = sqlite3_mprintf("%.*s/%s", k,zFilename,zNewFile);
        }
      }
      zNewScript = readFile(zNewFile);
      if( g.iTrace ) logMessage("begin script [%s]\n", zNewFile);
      runScript(0, 0, zNewScript, zNewFile);
      sqlite3_free(zNewScript);
      if( g.iTrace ) logMessage("end script [%s]\n", zNewFile);
      sqlite3_free(zToDel);
    }else






    if( strcmp(zCmd, "print")==0 ){
      int jj;
      for(jj=7; jj<len && ISSPACE(zScript[ii+jj]); jj++){}
      logMessage("%.*s", len-jj, zScript+ii+jj);
    }else






    if( strcmp(zCmd, "if")==0 ){
      int jj, rc;
      sqlite3_stmt *pStmt;
      for(jj=4; jj<len && ISSPACE(zScript[ii+jj]); jj++){}
      pStmt = prepareSql("SELECT %.*s", len-jj, zScript+ii+jj);
      rc = sqlite3_step(pStmt);
      if( rc!=SQLITE_ROW || sqlite3_column_int(pStmt, 0)==0 ){
        ii += findEndif(zScript+ii+len, 1, &lineno);
      }
      sqlite3_finalize(pStmt);
    }else







    if( strcmp(zCmd, "else")==0 ){
      ii += findEndif(zScript+ii+len, 0, &lineno);
    }else







    if( strcmp(zCmd, "endif")==0 ){

    }else






    if( strcmp(zCmd, "start")==0 && iClient==0 ){
      int iNewClient = atoi(azArg[0]);
      if( iNewClient>0 ){
        startClient(iNewClient);
      }
    }else
    if( strcmp(zCmd, "wait")==0 && iClient==0 ){
      int iTimeout = nArg>=2 ? atoi(azArg[1]) : 10000;
      sqlite3_snprintf(sizeof(zError),zError,"line %d of %s\n",
                       prevLine, zFilename);
      waitForClient(atoi(azArg[0]), iTimeout, zError);
    }else
    if( strcmp(zCmd, "task")==0 && iClient==0 ){
      int iTarget = atoi(azArg[0]);
      int iEnd;
      char *zTask;
      char *zTName;
      iEnd = findEnd(zScript+ii+len, &lineno);
      if( iTarget<0 ){
        errorMessage("line %d of %s: bad client number: %d",
                     prevLine, zFilename, iTarget);
      }else{
        zTask = sqlite3_mprintf("%.*s", iEnd, zScript+ii+len);
        if( nArg>1 ){
          zTName = sqlite3_mprintf("%s", azArg[1]);
        }else{
          zTName = sqlite3_mprintf("%s:%d", filenameTail(zFilename), prevLine);
        }
        startClient(iTarget);
        runSql("INSERT INTO task(client,script,name)"
               " VALUES(%d,'%q',%Q)", iTarget, zTask, zTName);
        sqlite3_free(zTask);
        sqlite3_free(zTName);
      }
      iEnd += tokenLength(zScript+ii+len+iEnd, &lineno);
      len += iEnd;
      iBegin = ii+len;
    }else







    if( strcmp(zCmd, "breakpoint")==0 ){
      test_breakpoint();
    }else






    if( strcmp(zCmd, "show-sql-errors")==0 ){
      g.bIgnoreSqlErrors = nArg>=1 ? !booleanValue(azArg[0]) : 1;
    }else


               {
      errorMessage("line %d of %s: unknown command --%s",
                   prevLine, zFilename, zCmd);
    }
    ii += len;
  }
  if( iBegin<ii ){
    char *zSql = sqlite3_mprintf("%.*s", ii-iBegin, zScript+iBegin);
    runSql(zSql);
    sqlite3_free(zSql);
  }
  stringFree(&sResult);
}
