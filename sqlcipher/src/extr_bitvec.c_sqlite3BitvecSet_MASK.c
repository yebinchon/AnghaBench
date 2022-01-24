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
typedef  size_t u32 ;
struct TYPE_6__ {int* aBitmap; int* aHash; TYPE_2__** apSub; } ;
struct TYPE_7__ {size_t iSize; size_t iDivisor; int nSet; TYPE_1__ u; } ;
typedef  TYPE_2__ Bitvec ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BITVEC_MXHASH ; 
 size_t BITVEC_NBIT ; 
 int BITVEC_NINT ; 
 int BITVEC_NPTR ; 
 size_t BITVEC_SZELEM ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (size_t) ; 
 size_t* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t*) ; 

int FUNC7(Bitvec *p, u32 i){
  u32 h;
  if( p==0 ) return SQLITE_OK;
  FUNC1( i>0 );
  FUNC1( i<=p->iSize );
  i--;
  while((p->iSize > BITVEC_NBIT) && p->iDivisor) {
    u32 bin = i/p->iDivisor;
    i = i%p->iDivisor;
    if( p->u.apSub[bin]==0 ){
      p->u.apSub[bin] = FUNC4( p->iDivisor );
      if( p->u.apSub[bin]==0 ) return SQLITE_NOMEM_BKPT;
    }
    p = p->u.apSub[bin];
  }
  if( p->iSize<=BITVEC_NBIT ){
    p->u.aBitmap[i/BITVEC_SZELEM] |= 1 << (i&(BITVEC_SZELEM-1));
    return SQLITE_OK;
  }
  h = FUNC0(i++);
  /* if there wasn't a hash collision, and this doesn't */
  /* completely fill the hash, then just add it without */
  /* worring about sub-dividing and re-hashing. */
  if( !p->u.aHash[h] ){
    if (p->nSet<(BITVEC_NINT-1)) {
      goto bitvec_set_end;
    } else {
      goto bitvec_set_rehash;
    }
  }
  /* there was a collision, check to see if it's already */
  /* in hash, if not, try to find a spot for it */
  do {
    if( p->u.aHash[h]==i ) return SQLITE_OK;
    h++;
    if( h>=BITVEC_NINT ) h = 0;
  } while( p->u.aHash[h] );
  /* we didn't find it in the hash.  h points to the first */
  /* available free spot. check to see if this is going to */
  /* make our hash too "full".  */
bitvec_set_rehash:
  if( p->nSet>=BITVEC_MXHASH ){
    unsigned int j;
    int rc;
    u32 *aiValues = FUNC5(0, sizeof(p->u.aHash));
    if( aiValues==0 ){
      return SQLITE_NOMEM_BKPT;
    }else{
      FUNC2(aiValues, p->u.aHash, sizeof(p->u.aHash));
      FUNC3(p->u.apSub, 0, sizeof(p->u.apSub));
      p->iDivisor = (p->iSize + BITVEC_NPTR - 1)/BITVEC_NPTR;
      rc = FUNC7(p, i);
      for(j=0; j<BITVEC_NINT; j++){
        if( aiValues[j] ) rc |= FUNC7(p, aiValues[j]);
      }
      FUNC6(0, aiValues);
      return rc;
    }
  }
bitvec_set_end:
  p->nSet++;
  p->u.aHash[h] = i;
  return SQLITE_OK;
}