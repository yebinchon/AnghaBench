
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zLine ;
typedef int FILE ;


 unsigned int CR_OK ;
 unsigned int WSEOL_OK ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void checkSpacing(const char *zFile, unsigned flags){
  FILE *in = fopen(zFile, "rb");
  int i;
  int seenSpace;
  int seenTab;
  int ln = 0;
  int lastNonspace = 0;
  char zLine[2000];
  if( in==0 ){
    printf("cannot open %s\n", zFile);
    return;
  }
  while( fgets(zLine, sizeof(zLine), in) ){
    seenSpace = 0;
    seenTab = 0;
    ln++;
    for(i=0; zLine[i]; i++){
      if( zLine[i]=='\t' && seenTab==0 ){
        printf("%s:%d: tab (\\t) character\n", zFile, ln);
        seenTab = 1;
      }else if( zLine[i]=='\r' ){
        if( (flags & CR_OK)==0 ){
          printf("%s:%d: carriage-return (\\r) character\n", zFile, ln);
        }
      }else if( zLine[i]==' ' ){
        seenSpace = 1;
      }else if( zLine[i]!='\n' ){
        lastNonspace = ln;
        seenSpace = 0;
      }
    }
    if( seenSpace && (flags & WSEOL_OK)==0 ){
      printf("%s:%d: whitespace at end-of-line\n", zFile, ln);
    }
  }
  fclose(in);
  if( lastNonspace<ln ){
    printf("%s:%d: blank lines at end of file (%d)\n",
        zFile, ln, ln - lastNonspace);
  }
}
