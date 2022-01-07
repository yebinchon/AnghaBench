
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;
typedef int MD5Context ;


 int MD5DigestToBase16 (unsigned char*,char*) ;
 int MD5Final (unsigned char*,int *) ;
 int SQLITE_TRANSIENT ;
 int * sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void md5finalize(sqlite3_context *context){
  MD5Context *p;
  unsigned char digest[16];
  char zBuf[33];
  p = sqlite3_aggregate_context(context, sizeof(*p));
  MD5Final(digest,p);
  MD5DigestToBase16(digest, zBuf);
  sqlite3_result_text(context, zBuf, -1, SQLITE_TRANSIENT);
}
