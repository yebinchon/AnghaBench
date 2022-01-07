
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int g ;
struct TYPE_6__ {int bTrace; char* zErr; scalar_t__ f; int iRoot; int iCol; int szPg; } ;
typedef TYPE_1__ GState ;


 int exit (int) ;
 scalar_t__ fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ofstRootAndColumn (TYPE_1__*,char*,char*,char*) ;
 int ofstTrace (TYPE_1__*,char*,int ) ;
 int ofstWalkPage (TYPE_1__*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv){
  GState g;
  memset(&g, 0, sizeof(g));
  if( argc>2 && strcmp(argv[1],"--trace")==0 ){
    g.bTrace = 1;
    argc--;
    argv++;
  }
  if( argc!=4 ){
    fprintf(stderr, "Usage: %s DATABASE TABLE COLUMN\n", *argv);
    exit(1);
  }
  ofstRootAndColumn(&g, argv[1], argv[2], argv[3]);
  if( g.zErr ){
    fprintf(stderr, "%s\n", g.zErr);
    exit(1);
  }
  ofstTrace(&g, "# szPg = %d\n", g.szPg);
  ofstTrace(&g, "# iRoot = %d\n", g.iRoot);
  ofstTrace(&g, "# iCol = %d\n", g.iCol);
  g.f = fopen(argv[1], "rb");
  if( g.f==0 ){
    fprintf(stderr, "cannot open \"%s\"\n", argv[1]);
    exit(1);
  }
  ofstWalkPage(&g, g.iRoot);
  if( g.zErr ){
    fprintf(stderr, "%s\n", g.zErr);
    exit(1);
  }
  return 0;
}
