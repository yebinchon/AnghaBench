
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sz; scalar_t__ zFilename; scalar_t__ a; scalar_t__ nRef; } ;
typedef TYPE_1__ VFile ;
struct TYPE_6__ {TYPE_1__* aFile; } ;
typedef int FILE ;


 int MX_FILE ;
 int SEEK_END ;
 int fatalError (char*,char const*) ;
 int fclose (int *) ;
 TYPE_1__* findVFile (char const*) ;
 int * fopen (char const*,char*) ;
 int fread (scalar_t__,long,int,int *) ;
 int free (scalar_t__) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 TYPE_2__ g ;
 void* malloc (long) ;
 int memcpy (scalar_t__,char const*,int) ;
 int rewind (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static VFile *createVFile(const char *zName, const char *zDiskFile){
  VFile *pNew = findVFile(zName);
  int i;
  FILE *in = 0;
  long sz = 0;

  if( pNew ) return pNew;
  for(i=0; i<MX_FILE && g.aFile[i].sz>=0; i++){}
  if( i>=MX_FILE ) return 0;
  if( zDiskFile ){
    in = fopen(zDiskFile, "rb");
    if( in==0 ) fatalError("no such file: \"%s\"", zDiskFile);
    fseek(in, 0, SEEK_END);
    sz = ftell(in);
    rewind(in);
  }
  pNew = &g.aFile[i];
  if( zName ){
    int nName = (int)strlen(zName)+1;
    pNew->zFilename = malloc(nName);
    if( pNew->zFilename==0 ){
      if( in ) fclose(in);
      return 0;
    }
    memcpy(pNew->zFilename, zName, nName);
  }else{
    pNew->zFilename = 0;
  }
  pNew->nRef = 0;
  pNew->sz = sz;
  pNew->a = malloc(sz);
  if( sz>0 ){
    if( pNew->a==0 || fread(pNew->a, sz, 1, in)<1 ){
      free(pNew->zFilename);
      free(pNew->a);
      pNew->a = 0;
      pNew->zFilename = 0;
      pNew->sz = -1;
      pNew = 0;
    }
  }
  if( in ) fclose(in);
  return pNew;
}
