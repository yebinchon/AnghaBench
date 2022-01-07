
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int feof (int ) ;
 int fread (char*,int,int,int ) ;
 char* realloc (char*,int) ;
 int stdin ;

__attribute__((used)) static int readStdin(char **pzOut){
  int nAlloc = 128;
  char *zOut = 0;
  int nOut = 0;

  while( !feof(stdin) ){
    int nRead;

    nAlloc = nAlloc*2;
    zOut = realloc(zOut, nAlloc);
    nRead = fread(&zOut[nOut], 1, nAlloc-nOut-1, stdin);

    if( nRead==0 ) break;
    nOut += nRead;
    zOut[nOut] = '\0';
  }

  *pzOut = zOut;
  return 0;
}
