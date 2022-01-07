
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_5__ {char* zJContent; } ;
struct TYPE_6__ {int eType; int jnFlags; size_t n; TYPE_1__ u; } ;
typedef TYPE_2__ JsonNode ;


 int JNODE_ESCAPE ;
 int JNODE_RAW ;



 int JSON_NULL ;




 int LARGEST_INT64 ;
 int SMALLEST_INT64 ;
 int SQLITE_TRANSIENT ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int jsonReturnJson (TYPE_2__*,int *,int **) ;
 int safe_isxdigit (char) ;
 int sqlite3AtoF (char const*,double*,int ,int ) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3_free ;
 char* sqlite3_malloc (int ) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_int64 (int *,int) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,char*,size_t,int ) ;
 double strtod (char*,int ) ;

__attribute__((used)) static void jsonReturn(
  JsonNode *pNode,
  sqlite3_context *pCtx,
  sqlite3_value **aReplace
){
  switch( pNode->eType ){
    default: {
      assert( pNode->eType==JSON_NULL );
      sqlite3_result_null(pCtx);
      break;
    }
    case 128: {
      sqlite3_result_int(pCtx, 1);
      break;
    }
    case 133: {
      sqlite3_result_int(pCtx, 0);
      break;
    }
    case 132: {
      sqlite3_int64 i = 0;
      const char *z = pNode->u.zJContent;
      if( z[0]=='-' ){ z++; }
      while( z[0]>='0' && z[0]<='9' ){
        unsigned v = *(z++) - '0';
        if( i>=LARGEST_INT64/10 ){
          if( i>LARGEST_INT64/10 ) goto int_as_real;
          if( z[0]>='0' && z[0]<='9' ) goto int_as_real;
          if( v==9 ) goto int_as_real;
          if( v==8 ){
            if( pNode->u.zJContent[0]=='-' ){
              sqlite3_result_int64(pCtx, SMALLEST_INT64);
              goto int_done;
            }else{
              goto int_as_real;
            }
          }
        }
        i = i*10 + v;
      }
      if( pNode->u.zJContent[0]=='-' ){ i = -i; }
      sqlite3_result_int64(pCtx, i);
      int_done:
      break;
      int_as_real: ;
    }
    case 130: {
      double r;




      r = strtod(pNode->u.zJContent, 0);

      sqlite3_result_double(pCtx, r);
      break;
    }
    case 129: {
      assert( (pNode->jnFlags & JNODE_RAW)==0 );
      if( (pNode->jnFlags & JNODE_ESCAPE)==0 ){

        sqlite3_result_text(pCtx, pNode->u.zJContent+1, pNode->n-2,
                            SQLITE_TRANSIENT);
      }else{

        u32 i;
        u32 n = pNode->n;
        const char *z = pNode->u.zJContent;
        char *zOut;
        u32 j;
        zOut = sqlite3_malloc( n+1 );
        if( zOut==0 ){
          sqlite3_result_error_nomem(pCtx);
          break;
        }
        for(i=1, j=0; i<n-1; i++){
          char c = z[i];
          if( c!='\\' ){
            zOut[j++] = c;
          }else{
            c = z[++i];
            if( c=='u' ){
              u32 v = 0, k;
              for(k=0; k<4; i++, k++){
                assert( i<n-2 );
                c = z[i+1];
                assert( safe_isxdigit(c) );
                if( c<='9' ) v = v*16 + c - '0';
                else if( c<='F' ) v = v*16 + c - 'A' + 10;
                else v = v*16 + c - 'a' + 10;
              }
              if( v==0 ) break;
              if( v<=0x7f ){
                zOut[j++] = (char)v;
              }else if( v<=0x7ff ){
                zOut[j++] = (char)(0xc0 | (v>>6));
                zOut[j++] = 0x80 | (v&0x3f);
              }else{
                zOut[j++] = (char)(0xe0 | (v>>12));
                zOut[j++] = 0x80 | ((v>>6)&0x3f);
                zOut[j++] = 0x80 | (v&0x3f);
              }
            }else{
              if( c=='b' ){
                c = '\b';
              }else if( c=='f' ){
                c = '\f';
              }else if( c=='n' ){
                c = '\n';
              }else if( c=='r' ){
                c = '\r';
              }else if( c=='t' ){
                c = '\t';
              }
              zOut[j++] = c;
            }
          }
        }
        zOut[j] = 0;
        sqlite3_result_text(pCtx, zOut, j, sqlite3_free);
      }
      break;
    }
    case 134:
    case 131: {
      jsonReturnJson(pNode, pCtx, aReplace);
      break;
    }
  }
}
