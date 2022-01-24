#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int nFrom; scalar_t__ nTo; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {int nDel; int nSubst; TYPE_4__** apSubst; TYPE_4__** apDel; int /*<<< orphan*/  nByte; } ;
struct TYPE_14__ {int n; char* z; int isPrefix; TYPE_3__* a; } ;
struct TYPE_13__ {TYPE_4__* pCost; } ;
typedef  TYPE_1__ EditDist3Lang ;
typedef  TYPE_2__ EditDist3FromString ;
typedef  TYPE_3__ EditDist3From ;
typedef  TYPE_4__ EditDist3Cost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 TYPE_4__** FUNC5 (TYPE_4__**,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char,int) ; 

__attribute__((used)) static EditDist3FromString *FUNC8(
  const EditDist3Lang *pLang,
  const char *z,
  int n
){
  EditDist3FromString *pStr;
  EditDist3Cost *p;
  int i;

  if( z==0 ) return 0;
  if( n<0 ) n = (int)FUNC6(z);
  pStr = FUNC4( sizeof(*pStr) + sizeof(pStr->a[0])*n + n + 1 );
  if( pStr==0 ) return 0;
  pStr->a = (EditDist3From*)&pStr[1];
  FUNC3(pStr->a, 0, sizeof(pStr->a[0])*n);
  pStr->n = n;
  pStr->z = (char*)&pStr->a[n];
  FUNC2(pStr->z, z, n+1);
  if( n && z[n-1]=='*' ){
    pStr->isPrefix = 1;
    n--;
    pStr->n--;
    pStr->z[n] = 0;
  }else{
    pStr->isPrefix = 0;
  }

  for(i=0; i<n; i++){
    EditDist3From *pFrom = &pStr->a[i];
    FUNC3(pFrom, 0, sizeof(*pFrom));
    pFrom->nByte = FUNC7((unsigned char)z[i], n-i);
    for(p=pLang->pCost; p; p=p->pNext){
      EditDist3Cost **apNew;
      if( i+p->nFrom>n ) continue;
      if( FUNC1(p, z+i, n-i)==0 ) continue;
      if( p->nTo==0 ){
        apNew = FUNC5(pFrom->apDel,
                                sizeof(*apNew)*(pFrom->nDel+1));
        if( apNew==0 ) break;
        pFrom->apDel = apNew;
        apNew[pFrom->nDel++] = p;
      }else{
        apNew = FUNC5(pFrom->apSubst,
                                sizeof(*apNew)*(pFrom->nSubst+1));
        if( apNew==0 ) break;
        pFrom->apSubst = apNew;
        apNew[pFrom->nSubst++] = p;
      }
    }
    if( p ){
      FUNC0(pStr);
      pStr = 0;
      break;
    }
  }
  return pStr;
}