
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_2__ {int bRaw; unsigned char pagesize; int mxPage; } ;


 int ISDIGIT (char) ;
 int decode_btree_page (unsigned char*,int,int,char*) ;
 int decode_trunk_page (int,int,int) ;
 int exit (int) ;
 int fileClose () ;
 int fileGetsize () ;
 int fileOpen (char const*,char*) ;
 unsigned char* fileRead (int,int) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ g ;
 int page_usage_report (char const*,char*) ;
 int print_db_header () ;
 int print_page (int) ;
 int printf (char*,int) ;
 int ptrmap_coverage_report (char*) ;
 int sqlite3_free (unsigned char*) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strtol (char*,char**,int ) ;
 int usage (char const*) ;

int main(int argc, char **argv){
  sqlite3_int64 szFile;
  unsigned char *zPgSz;
  const char *zPrg = argv[0];
  char **azArg = argv;
  int nArg = argc;


  if( nArg>1 ){
    if( sqlite3_stricmp("-raw", azArg[1])==0
     || sqlite3_stricmp("--raw", azArg[1])==0
    ){
      g.bRaw = 1;
      azArg++;
      nArg--;
    }
  }

  if( nArg<2 ){
    usage(zPrg);
    exit(1);
  }

  fileOpen(zPrg, azArg[1]);
  szFile = fileGetsize();

  zPgSz = fileRead(16, 2);
  g.pagesize = zPgSz[0]*256 + zPgSz[1]*65536;
  if( g.pagesize==0 ) g.pagesize = 1024;
  sqlite3_free(zPgSz);

  printf("Pagesize: %d\n", g.pagesize);
  g.mxPage = (int)((szFile+g.pagesize-1)/g.pagesize);

  printf("Available pages: 1..%d\n", g.mxPage);
  if( nArg==2 ){
    int i;
    for(i=1; i<=g.mxPage; i++) print_page(i);
  }else{
    int i;
    for(i=2; i<nArg; i++){
      int iStart, iEnd;
      char *zLeft;
      if( strcmp(azArg[i], "dbheader")==0 ){
        print_db_header();
        continue;
      }
      if( strcmp(azArg[i], "pgidx")==0 ){
        page_usage_report(zPrg, azArg[1]);
        continue;
      }
      if( strcmp(azArg[i], "ptrmap")==0 ){
        ptrmap_coverage_report(azArg[1]);
        continue;
      }
      if( strcmp(azArg[i], "help")==0 ){
        usage(zPrg);
        continue;
      }
      if( !ISDIGIT(azArg[i][0]) ){
        fprintf(stderr, "%s: unknown option: [%s]\n", zPrg, azArg[i]);
        continue;
      }
      iStart = strtol(azArg[i], &zLeft, 0);
      if( zLeft && strcmp(zLeft,"..end")==0 ){
        iEnd = g.mxPage;
      }else if( zLeft && zLeft[0]=='.' && zLeft[1]=='.' ){
        iEnd = strtol(&zLeft[2], 0, 0);
      }else if( zLeft && zLeft[0]=='b' ){
        int ofst, nByte, hdrSize;
        unsigned char *a;
        if( iStart==1 ){
          ofst = hdrSize = 100;
          nByte = g.pagesize-100;
        }else{
          hdrSize = 0;
          ofst = (iStart-1)*g.pagesize;
          nByte = g.pagesize;
        }
        a = fileRead(ofst, nByte);
        decode_btree_page(a, iStart, hdrSize, &zLeft[1]);
        sqlite3_free(a);
        continue;
      }else if( zLeft && zLeft[0]=='t' ){
        int detail = 0;
        int recursive = 0;
        int j;
        for(j=1; zLeft[j]; j++){
          if( zLeft[j]=='r' ) recursive = 1;
          if( zLeft[j]=='d' ) detail = 1;
        }
        decode_trunk_page(iStart, detail, recursive);
        continue;
      }else{
        iEnd = iStart;
      }
      if( iStart<1 || iEnd<iStart || iEnd>g.mxPage ){
        fprintf(stderr,
          "Page argument should be LOWER?..UPPER?.  Range 1 to %d\n",
          g.mxPage);
        exit(1);
      }
      while( iStart<=iEnd ){
        print_page(iStart);
        iStart++;
      }
    }
  }
  fileClose();
  return 0;
}
