
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_5__ {int isInit; } ;
typedef TYPE_1__ MD5Context ;


 int MD5Init (TYPE_1__*) ;
 int MD5Update (TYPE_1__*,unsigned char*,int ) ;
 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void md5step(sqlite3_context *context, int argc, sqlite3_value **argv){
  MD5Context *p;
  int i;
  if( argc<1 ) return;
  p = sqlite3_aggregate_context(context, sizeof(*p));
  if( p==0 ) return;
  if( !p->isInit ){
    MD5Init(p);
  }
  for(i=0; i<argc; i++){
    const char *zData = (char*)sqlite3_value_text(argv[i]);
    if( zData ){
      MD5Update(p, (unsigned char*)zData, strlen(zData));
    }
  }
}
