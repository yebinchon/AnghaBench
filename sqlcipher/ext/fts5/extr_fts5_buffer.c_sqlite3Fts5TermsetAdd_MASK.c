#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {TYPE_1__** apHash; } ;
struct TYPE_6__ {int iIdx; int nTerm; char* pTerm; struct TYPE_6__* pNext; } ;
typedef  TYPE_1__ Fts5TermsetEntry ;
typedef  TYPE_2__ Fts5Termset ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 TYPE_1__* FUNC3 (int*,int) ; 

int FUNC4(
  Fts5Termset *p, 
  int iIdx,
  const char *pTerm, int nTerm, 
  int *pbPresent
){
  int rc = SQLITE_OK;
  *pbPresent = 0;
  if( p ){
    int i;
    u32 hash = 13;
    Fts5TermsetEntry *pEntry;

    /* Calculate a hash value for this term. This is the same hash checksum
    ** used by the fts5_hash.c module. This is not important for correct
    ** operation of the module, but is necessary to ensure that some tests
    ** designed to produce hash table collisions really do work.  */
    for(i=nTerm-1; i>=0; i--){
      hash = (hash << 3) ^ hash ^ pTerm[i];
    }
    hash = (hash << 3) ^ hash ^ iIdx;
    hash = hash % FUNC0(p->apHash);

    for(pEntry=p->apHash[hash]; pEntry; pEntry=pEntry->pNext){
      if( pEntry->iIdx==iIdx 
          && pEntry->nTerm==nTerm 
          && FUNC1(pEntry->pTerm, pTerm, nTerm)==0 
      ){
        *pbPresent = 1;
        break;
      }
    }

    if( pEntry==0 ){
      pEntry = FUNC3(&rc, sizeof(Fts5TermsetEntry) + nTerm);
      if( pEntry ){
        pEntry->pTerm = (char*)&pEntry[1];
        pEntry->nTerm = nTerm;
        pEntry->iIdx = iIdx;
        FUNC2(pEntry->pTerm, pTerm, nTerm);
        pEntry->pNext = p->apHash[hash];
        p->apHash[hash] = pEntry;
      }
    }
  }

  return rc;
}