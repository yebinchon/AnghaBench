
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_5__ {int nGroup; int * apGroup; } ;
typedef TYPE_1__ FuzzChangeset ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int atoi (char*) ;
 int fprintf (int ,char*,int) ;
 int fuzzDoOneFuzz (char*,int *,TYPE_1__*) ;
 int fuzzFree (int *) ;
 scalar_t__ fuzzMalloc (int) ;
 int fuzzParseChangeset (void*,int,TYPE_1__*) ;
 int fuzzPrintGroup (TYPE_1__*,int ) ;
 int fuzzRandomSeed (unsigned int) ;
 int fuzzReadFile (char const*,int*,void**) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,int) ;
 int stderr ;
 int usage (char*) ;

int main(int argc, char **argv){
  int nRepeat = 0;
  int iSeed = 0;
  const char *zInput;
  void *pChangeset = 0;
  int nChangeset = 0;
  int i;
  FuzzChangeset changeset;
  int rc;
  u8 *pBuf = 0;

  if( argc!=4 && argc!=2 ) usage(argv[0]);
  zInput = argv[1];

  fuzzReadFile(zInput, &nChangeset, &pChangeset);
  rc = fuzzParseChangeset(pChangeset, nChangeset, &changeset);

  if( rc==SQLITE_OK ){
    if( argc==2 ){
      for(i=0; i<changeset.nGroup; i++){
        fuzzPrintGroup(&changeset, changeset.apGroup[i]);
      }
    }else{
      pBuf = (u8*)fuzzMalloc((sqlite3_int64)nChangeset*2 + 1024);
      if( pBuf==0 ){
        rc = SQLITE_NOMEM;
      }else{
        iSeed = atoi(argv[2]);
        nRepeat = atoi(argv[3]);
        fuzzRandomSeed((unsigned int)iSeed);
        for(i=0; rc==SQLITE_OK && i<nRepeat; i++){
          char *zOut = sqlite3_mprintf("%s-%d", zInput, i);
          rc = fuzzDoOneFuzz(zOut, pBuf, &changeset);
          sqlite3_free(zOut);
        }
        fuzzFree(pBuf);
      }
    }
  }

  if( rc!=SQLITE_OK ){
    fprintf(stderr, "error while processing changeset: %d\n", rc);
  }

  return rc;
}
