
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int z3 ;
typedef int z2 ;
typedef int z1 ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ zFilename; int out; } ;
typedef TYPE_1__ VLogLog ;


 int fprintf (int ,char*,int ,int ,char const*,int,char*,char*,char*,int) ;
 int sqlite3_snprintf (int,char*,char*,int,...) ;

__attribute__((used)) static void vlogLogPrint(
  VLogLog *pLog,
  sqlite3_int64 tStart,
  sqlite3_int64 tElapse,
  const char *zOp,
  sqlite3_int64 iArg1,
  sqlite3_int64 iArg2,
  const char *zArg3,
  int iRes
){
  char z1[40], z2[40], z3[2000];
  if( pLog==0 ) return;
  if( iArg1>=0 ){
    sqlite3_snprintf(sizeof(z1), z1, "%lld", iArg1);
  }else{
    z1[0] = 0;
  }
  if( iArg2>=0 ){
    sqlite3_snprintf(sizeof(z2), z2, "%lld", iArg2);
  }else{
    z2[0] = 0;
  }
  if( zArg3 ){
    sqlite3_snprintf(sizeof(z3), z3, "\"%.*w\"", sizeof(z3)-4, zArg3);
  }else{
    z3[0] = 0;
  }
  fprintf(pLog->out,"%lld,%lld,%s,%d,%s,%s,%s,%d\n",
      tStart, tElapse, zOp, pLog->zFilename==0, z1, z2, z3, iRes);
}
