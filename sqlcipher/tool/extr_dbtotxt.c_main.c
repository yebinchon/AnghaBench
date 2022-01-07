
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bShow ;
typedef int FILE ;


 int SEEK_END ;
 scalar_t__ allZero (unsigned char*) ;
 int atoi (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int memset (unsigned char*,char,int) ;
 int printf (char*,...) ;
 int rewind (int *) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

int main(int argc, char **argv){
  int pgsz = 0;
  long szFile;
  FILE *in;
  int i, j;
  int nErr = 0;
  const char *zInputFile = 0;
  const char *zBaseName = 0;
  int lastPage = 0;
  int iPage;
  unsigned char aLine[16];
  unsigned char aHdr[100];
  unsigned char bShow[256];
  memset(bShow, '.', sizeof(bShow));
  for(i=' '; i<='~'; i++){
    if( i!='{' && i!='}' && i!='"' && i!='\\' ) bShow[i] = (unsigned char)i;
  }
  for(i=1; i<argc; i++){
    if( argv[i][0]=='-' ){
      const char *z = argv[i];
      z++;
      if( z[0]=='-' ) z++;
      if( strcmp(z,"pagesize")==0 ){
        i++;
        pgsz = atoi(argv[i]);
        if( pgsz<512 || pgsz>65536 || (pgsz&(pgsz-1))!=0 ){
          fprintf(stderr, "Page size must be a power of two between"
                          " 512 and 65536.\n");
          nErr++;
        }
        continue;
      }
      fprintf(stderr, "Unknown option: %s\n", argv[i]);
      nErr++;
    }else if( zInputFile ){
      fprintf(stderr, "Already using a different input file: [%s]\n", argv[i]);
      nErr++;
    }else{
      zInputFile = argv[i];
    }
  }
  if( zInputFile==0 ){
    fprintf(stderr, "No input file specified.\n");
    nErr++;
  }
  if( nErr ){
    fprintf(stderr, "Usage: %s [--pagesize N] FILENAME\n", argv[0]);
    exit(1);
  }
  in = fopen(zInputFile, "rb");
  if( in==0 ){
    fprintf(stderr, "Cannot open input file [%s]\n", zInputFile);
    exit(1);
  }
  fseek(in, 0, SEEK_END);
  szFile = ftell(in);
  rewind(in);
  if( szFile<100 ){
    fprintf(stderr, "File too short. Minimum size is 100 bytes.\n");
    exit(1);
  }
  if( fread(aHdr, 100, 1, in)!=1 ){
    fprintf(stderr, "Cannot read file header\n");
    exit(1);
  }
  rewind(in);
  if( pgsz==0 ){
    pgsz = (aHdr[16]<<8) | aHdr[17];
    if( pgsz==1 ) pgsz = 65536;
    if( pgsz<512 || (pgsz&(pgsz-1))!=0 ){
      fprintf(stderr, "Invalid page size in header: %d\n", pgsz);
      exit(1);
    }
  }
  zBaseName = zInputFile;
  for(i=0; zInputFile[i]; i++){
    if( zInputFile[i]=='/' && zInputFile[i+1]!=0 ) zBaseName = zInputFile+i+1;
  }
  printf("| size %d pagesize %d filename %s\n",(int)szFile,pgsz,zBaseName);
  for(i=0; i<szFile; i+=16){
    int got = (int)fread(aLine, 1, 16, in);
    if( got!=16 ){
      static int once = 1;
      if( once ){
        fprintf(stderr, "Could not read input file starting at byte %d\n",
                         i+got);
      }
      memset(aLine+got, 0, 16-got);
    }
    if( allZero(aLine) ) continue;
    iPage = i/pgsz + 1;
    if( lastPage!=iPage ){
      printf("| page %d offset %d\n", iPage, (iPage-1)*pgsz);
      lastPage = iPage;
    }
    printf("|  %5d:", i-(iPage-1)*pgsz);
    for(j=0; j<16; j++) printf(" %02x", aLine[j]);
    printf("   ");
    for(j=0; j<16; j++){
      unsigned char c = (unsigned char)aLine[j];
      fputc( bShow[c], stdout);
    }
    fputc('\n', stdout);
  }
  fclose(in);
  printf("| end %s\n", zBaseName);
  return 0;
}
