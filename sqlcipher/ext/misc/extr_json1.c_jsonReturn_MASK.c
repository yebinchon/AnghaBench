#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {char* zJContent; } ;
struct TYPE_6__ {int eType; int jnFlags; size_t n; TYPE_1__ u; } ;
typedef  TYPE_2__ JsonNode ;

/* Variables and functions */
 int JNODE_ESCAPE ; 
 int JNODE_RAW ; 
#define  JSON_ARRAY 134 
#define  JSON_FALSE 133 
#define  JSON_INT 132 
 int JSON_NULL ; 
#define  JSON_OBJECT 131 
#define  JSON_REAL 130 
#define  JSON_STRING 129 
#define  JSON_TRUE 128 
 int LARGEST_INT64 ; 
 int SMALLEST_INT64 ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 double FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(
  JsonNode *pNode,            /* Node to return */
  sqlite3_context *pCtx,      /* Return value for this function */
  sqlite3_value **aReplace    /* Array of replacement values */
){
  switch( pNode->eType ){
    default: {
      FUNC0( pNode->eType==JSON_NULL );
      FUNC10(pCtx);
      break;
    }
    case JSON_TRUE: {
      FUNC8(pCtx, 1);
      break;
    }
    case JSON_FALSE: {
      FUNC8(pCtx, 0);
      break;
    }
    case JSON_INT: {
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
              FUNC9(pCtx, SMALLEST_INT64);
              goto int_done;
            }else{
              goto int_as_real;
            }
          }
        }
        i = i*10 + v;
      }
      if( pNode->u.zJContent[0]=='-' ){ i = -i; }
      FUNC9(pCtx, i);
      int_done:
      break;
      int_as_real: /* fall through to real */;
    }
    case JSON_REAL: {
      double r;
#ifdef SQLITE_AMALGAMATION
      const char *z = pNode->u.zJContent;
      sqlite3AtoF(z, &r, sqlite3Strlen30(z), SQLITE_UTF8);
#else
      r = FUNC12(pNode->u.zJContent, 0);
#endif
      FUNC6(pCtx, r);
      break;
    }
    case JSON_STRING: {
#if 0 /* Never happens because JNODE_RAW is only set by json_set(),
      ** json_insert() and json_replace() and those routines do not
      ** call jsonReturn() */
      if( pNode->jnFlags & JNODE_RAW ){
        sqlite3_result_text(pCtx, pNode->u.zJContent, pNode->n,
                            SQLITE_TRANSIENT);
      }else 
#endif
      FUNC0( (pNode->jnFlags & JNODE_RAW)==0 );
      if( (pNode->jnFlags & JNODE_ESCAPE)==0 ){
        /* JSON formatted without any backslash-escapes */
        FUNC11(pCtx, pNode->u.zJContent+1, pNode->n-2,
                            SQLITE_TRANSIENT);
      }else{
        /* Translate JSON formatted string into raw text */
        u32 i;
        u32 n = pNode->n;
        const char *z = pNode->u.zJContent;
        char *zOut;
        u32 j;
        zOut = FUNC5( n+1 );
        if( zOut==0 ){
          FUNC7(pCtx);
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
                FUNC0( i<n-2 );
                c = z[i+1];
                FUNC0( FUNC2(c) );
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
        FUNC11(pCtx, zOut, j, sqlite3_free);
      }
      break;
    }
    case JSON_ARRAY:
    case JSON_OBJECT: {
      FUNC1(pNode, pCtx, aReplace);
      break;
    }
  }
}