#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  aSpecial ;
struct TYPE_4__ {scalar_t__ nUsed; scalar_t__ nAlloc; char* zBuf; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(JsonString *p, const char *zIn, u32 N){
  u32 i;
  if( (N+p->nUsed+2 >= p->nAlloc) && FUNC1(p,N+2)!=0 ) return;
  p->zBuf[p->nUsed++] = '"';
  for(i=0; i<N; i++){
    unsigned char c = ((unsigned const char*)zIn)[i];
    if( c=='"' || c=='\\' ){
      json_simple_escape:
      if( (p->nUsed+N+3-i > p->nAlloc) && FUNC1(p,N+3-i)!=0 ) return;
      p->zBuf[p->nUsed++] = '\\';
    }else if( c<=0x1f ){
      static const char aSpecial[] = {
         0, 0, 0, 0, 0, 0, 0, 0, 'b', 't', 'n', 0, 'f', 'r', 0, 0,
         0, 0, 0, 0, 0, 0, 0, 0,   0,   0,   0, 0,   0,   0, 0, 0
      };
      FUNC0( sizeof(aSpecial)==32 );
      FUNC0( aSpecial['\b']=='b' );
      FUNC0( aSpecial['\f']=='f' );
      FUNC0( aSpecial['\n']=='n' );
      FUNC0( aSpecial['\r']=='r' );
      FUNC0( aSpecial['\t']=='t' );
      if( aSpecial[c] ){
        c = aSpecial[c];
        goto json_simple_escape;
      }
      if( (p->nUsed+N+7+i > p->nAlloc) && FUNC1(p,N+7-i)!=0 ) return;
      p->zBuf[p->nUsed++] = '\\';
      p->zBuf[p->nUsed++] = 'u';
      p->zBuf[p->nUsed++] = '0';
      p->zBuf[p->nUsed++] = '0';
      p->zBuf[p->nUsed++] = '0' + (c>>4);
      c = "0123456789abcdef"[c&0xf];
    }
    p->zBuf[p->nUsed++] = c;
  }
  p->zBuf[p->nUsed++] = '"';
  FUNC0( p->nUsed<p->nAlloc );
}