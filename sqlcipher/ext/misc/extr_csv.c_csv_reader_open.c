
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* zIn; scalar_t__ in; int nIn; } ;
typedef TYPE_1__ CsvReader ;


 int CSV_INBUFSZ ;
 int assert (int) ;
 int csv_errmsg (TYPE_1__*,char*,...) ;
 int csv_reader_reset (TYPE_1__*) ;
 scalar_t__ fopen (char const*,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int csv_reader_open(
  CsvReader *p,
  const char *zFilename,
  const char *zData
){
  if( zFilename ){
    p->zIn = sqlite3_malloc( CSV_INBUFSZ );
    if( p->zIn==0 ){
      csv_errmsg(p, "out of memory");
      return 1;
    }
    p->in = fopen(zFilename, "rb");
    if( p->in==0 ){
      sqlite3_free(p->zIn);
      csv_reader_reset(p);
      csv_errmsg(p, "cannot open '%s' for reading", zFilename);
      return 1;
    }
  }else{
    assert( p->in==0 );
    p->zIn = (char*)zData;
    p->nIn = strlen(zData);
  }
  return 0;
}
