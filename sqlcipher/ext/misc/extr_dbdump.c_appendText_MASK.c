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
struct TYPE_4__ {int n; int nAlloc; char* z; } ;
typedef  TYPE_1__ DText ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(DText *p, char const *zAppend, char quote){
  int len;
  int i;
  int nAppend = (int)(FUNC3(zAppend) & 0x3fffffff);

  len = nAppend+p->n+1;
  if( quote ){
    len += 2;
    for(i=0; i<nAppend; i++){
      if( zAppend[i]==quote ) len++;
    }
  }

  if( p->n+len>=p->nAlloc ){
    char *zNew;
    p->nAlloc = p->nAlloc*2 + len + 20;
    zNew = FUNC2(p->z, p->nAlloc);
    if( zNew==0 ){
      FUNC0(p);
      return;
    }
    p->z = zNew;
  }

  if( quote ){
    char *zCsr = p->z+p->n;
    *zCsr++ = quote;
    for(i=0; i<nAppend; i++){
      *zCsr++ = zAppend[i];
      if( zAppend[i]==quote ) *zCsr++ = quote;
    }
    *zCsr++ = quote;
    p->n = (int)(zCsr - p->z);
    *zCsr = '\0';
  }else{
    FUNC1(p->z+p->n, zAppend, nAppend);
    p->n += nAppend;
    p->z[p->n] = '\0';
  }
}