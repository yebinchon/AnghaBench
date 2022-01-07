
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int avail_in; int avail_out; int * next_out; int * next_in; } ;
typedef TYPE_1__ z_stream ;
typedef int u8 ;
typedef int str ;
typedef int sqlite3_context ;
typedef int Byte ;


 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit2 (TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc (int) ;
 int sqlite3_result_blob (int *,int *,int,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int zipfileCtxErrorMsg (int *,char*,int) ;
 int zipfileFree ;

__attribute__((used)) static void zipfileInflate(
  sqlite3_context *pCtx,
  const u8 *aIn,
  int nIn,
  int nOut
){
  u8 *aRes = sqlite3_malloc(nOut);
  if( aRes==0 ){
    sqlite3_result_error_nomem(pCtx);
  }else{
    int err;
    z_stream str;
    memset(&str, 0, sizeof(str));

    str.next_in = (Byte*)aIn;
    str.avail_in = nIn;
    str.next_out = (Byte*)aRes;
    str.avail_out = nOut;

    err = inflateInit2(&str, -15);
    if( err!=Z_OK ){
      zipfileCtxErrorMsg(pCtx, "inflateInit2() failed (%d)", err);
    }else{
      err = inflate(&str, Z_NO_FLUSH);
      if( err!=Z_STREAM_END ){
        zipfileCtxErrorMsg(pCtx, "inflate() failed (%d)", err);
      }else{
        sqlite3_result_blob(pCtx, aRes, nOut, zipfileFree);
        aRes = 0;
      }
    }
    sqlite3_free(aRes);
    inflateEnd(&str);
  }
}
