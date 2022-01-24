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
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_6__ {scalar_t__ eType; int jnFlags; size_t n; } ;
struct TYPE_5__ {char* zJson; scalar_t__ iDepth; size_t nNode; TYPE_2__* aNode; scalar_t__ oom; } ;
typedef  TYPE_1__ JsonParse ;
typedef  TYPE_2__ JsonNode ;

/* Variables and functions */
 int JNODE_ESCAPE ; 
 int JNODE_LABEL ; 
 scalar_t__ JSON_ARRAY ; 
 scalar_t__ JSON_FALSE ; 
 scalar_t__ JSON_INT ; 
 scalar_t__ JSON_MAX_DEPTH ; 
 scalar_t__ JSON_NULL ; 
 scalar_t__ JSON_OBJECT ; 
 scalar_t__ JSON_REAL ; 
 scalar_t__ JSON_STRING ; 
 scalar_t__ JSON_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(JsonParse *pParse, u32 i){
  char c;
  u32 j;
  int iThis;
  int x;
  JsonNode *pNode;
  const char *z = pParse->zJson;
  while( FUNC4(z[i]) ){ i++; }
  if( (c = z[i])=='{' ){
    /* Parse object */
    iThis = FUNC2(pParse, JSON_OBJECT, 0, 0);
    if( iThis<0 ) return -1;
    for(j=i+1;;j++){
      while( FUNC4(z[j]) ){ j++; }
      if( ++pParse->iDepth > JSON_MAX_DEPTH ) return -1;
      x = FUNC6(pParse, j);
      if( x<0 ){
        pParse->iDepth--;
        if( x==(-2) && pParse->nNode==(u32)iThis+1 ) return j+1;
        return -1;
      }
      if( pParse->oom ) return -1;
      pNode = &pParse->aNode[pParse->nNode-1];
      if( pNode->eType!=JSON_STRING ) return -1;
      pNode->jnFlags |= JNODE_LABEL;
      j = x;
      while( FUNC4(z[j]) ){ j++; }
      if( z[j]!=':' ) return -1;
      j++;
      x = FUNC6(pParse, j);
      pParse->iDepth--;
      if( x<0 ) return -1;
      j = x;
      while( FUNC4(z[j]) ){ j++; }
      c = z[j];
      if( c==',' ) continue;
      if( c!='}' ) return -1;
      break;
    }
    pParse->aNode[iThis].n = pParse->nNode - (u32)iThis - 1;
    return j+1;
  }else if( c=='[' ){
    /* Parse array */
    iThis = FUNC2(pParse, JSON_ARRAY, 0, 0);
    if( iThis<0 ) return -1;
    for(j=i+1;;j++){
      while( FUNC4(z[j]) ){ j++; }
      if( ++pParse->iDepth > JSON_MAX_DEPTH ) return -1;
      x = FUNC6(pParse, j);
      pParse->iDepth--;
      if( x<0 ){
        if( x==(-3) && pParse->nNode==(u32)iThis+1 ) return j+1;
        return -1;
      }
      j = x;
      while( FUNC4(z[j]) ){ j++; }
      c = z[j];
      if( c==',' ) continue;
      if( c!=']' ) return -1;
      break;
    }
    pParse->aNode[iThis].n = pParse->nNode - (u32)iThis - 1;
    return j+1;
  }else if( c=='"' ){
    /* Parse string */
    u8 jnFlags = 0;
    j = i+1;
    for(;;){
      c = z[j];
      if( (c & ~0x1f)==0 ){
        /* Control characters are not allowed in strings */
        return -1;
      }
      if( c=='\\' ){
        c = z[++j];
        if( c=='"' || c=='\\' || c=='/' || c=='b' || c=='f'
           || c=='n' || c=='r' || c=='t'
           || (c=='u' && FUNC1(z+j+1)) ){
          jnFlags = JNODE_ESCAPE;
        }else{
          return -1;
        }
      }else if( c=='"' ){
        break;
      }
      j++;
    }
    FUNC2(pParse, JSON_STRING, j+1-i, &z[i]);
    if( !pParse->oom ) pParse->aNode[pParse->nNode-1].jnFlags = jnFlags;
    return j+1;
  }else if( c=='n'
         && FUNC5(z+i,"null",4)==0
         && !FUNC3(z[i+4]) ){
    FUNC2(pParse, JSON_NULL, 0, 0);
    return i+4;
  }else if( c=='t'
         && FUNC5(z+i,"true",4)==0
         && !FUNC3(z[i+4]) ){
    FUNC2(pParse, JSON_TRUE, 0, 0);
    return i+4;
  }else if( c=='f'
         && FUNC5(z+i,"false",5)==0
         && !FUNC3(z[i+5]) ){
    FUNC2(pParse, JSON_FALSE, 0, 0);
    return i+5;
  }else if( c=='-' || (c>='0' && c<='9') ){
    /* Parse number */
    u8 seenDP = 0;
    u8 seenE = 0;
    FUNC0( '-' < '0' );
    if( c<='0' ){
      j = c=='-' ? i+1 : i;
      if( z[j]=='0' && z[j+1]>='0' && z[j+1]<='9' ) return -1;
    }
    j = i+1;
    for(;; j++){
      c = z[j];
      if( c>='0' && c<='9' ) continue;
      if( c=='.' ){
        if( z[j-1]=='-' ) return -1;
        if( seenDP ) return -1;
        seenDP = 1;
        continue;
      }
      if( c=='e' || c=='E' ){
        if( z[j-1]<'0' ) return -1;
        if( seenE ) return -1;
        seenDP = seenE = 1;
        c = z[j+1];
        if( c=='+' || c=='-' ){
          j++;
          c = z[j+1];
        }
        if( c<'0' || c>'9' ) return -1;
        continue;
      }
      break;
    }
    if( z[j-1]<'0' ) return -1;
    FUNC2(pParse, seenDP ? JSON_REAL : JSON_INT,
                        j - i, &z[i]);
    return j;
  }else if( c=='}' ){
    return -2;  /* End of {...} */
  }else if( c==']' ){
    return -3;  /* End of [...] */
  }else if( c==0 ){
    return 0;   /* End of file */
  }else{
    return -1;  /* Syntax error */
  }
}