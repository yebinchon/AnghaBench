
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {int* aBitmap; int* aHash; TYPE_2__** apSub; } ;
struct TYPE_7__ {size_t iSize; size_t iDivisor; int nSet; TYPE_1__ u; } ;
typedef TYPE_2__ Bitvec ;


 size_t BITVEC_HASH (int ) ;
 scalar_t__ BITVEC_MXHASH ;
 size_t BITVEC_NBIT ;
 int BITVEC_NINT ;
 int BITVEC_NPTR ;
 size_t BITVEC_SZELEM ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (size_t*,size_t*,int) ;
 int memset (TYPE_2__**,int ,int) ;
 TYPE_2__* sqlite3BitvecCreate (size_t) ;
 size_t* sqlite3StackAllocRaw (int ,int) ;
 int sqlite3StackFree (int ,size_t*) ;

int sqlite3BitvecSet(Bitvec *p, u32 i){
  u32 h;
  if( p==0 ) return SQLITE_OK;
  assert( i>0 );
  assert( i<=p->iSize );
  i--;
  while((p->iSize > BITVEC_NBIT) && p->iDivisor) {
    u32 bin = i/p->iDivisor;
    i = i%p->iDivisor;
    if( p->u.apSub[bin]==0 ){
      p->u.apSub[bin] = sqlite3BitvecCreate( p->iDivisor );
      if( p->u.apSub[bin]==0 ) return SQLITE_NOMEM_BKPT;
    }
    p = p->u.apSub[bin];
  }
  if( p->iSize<=BITVEC_NBIT ){
    p->u.aBitmap[i/BITVEC_SZELEM] |= 1 << (i&(BITVEC_SZELEM-1));
    return SQLITE_OK;
  }
  h = BITVEC_HASH(i++);



  if( !p->u.aHash[h] ){
    if (p->nSet<(BITVEC_NINT-1)) {
      goto bitvec_set_end;
    } else {
      goto bitvec_set_rehash;
    }
  }


  do {
    if( p->u.aHash[h]==i ) return SQLITE_OK;
    h++;
    if( h>=BITVEC_NINT ) h = 0;
  } while( p->u.aHash[h] );



bitvec_set_rehash:
  if( p->nSet>=BITVEC_MXHASH ){
    unsigned int j;
    int rc;
    u32 *aiValues = sqlite3StackAllocRaw(0, sizeof(p->u.aHash));
    if( aiValues==0 ){
      return SQLITE_NOMEM_BKPT;
    }else{
      memcpy(aiValues, p->u.aHash, sizeof(p->u.aHash));
      memset(p->u.apSub, 0, sizeof(p->u.apSub));
      p->iDivisor = (p->iSize + BITVEC_NPTR - 1)/BITVEC_NPTR;
      rc = sqlite3BitvecSet(p, i);
      for(j=0; j<BITVEC_NINT; j++){
        if( aiValues[j] ) rc |= sqlite3BitvecSet(p, aiValues[j]);
      }
      sqlite3StackFree(0, aiValues);
      return rc;
    }
  }
bitvec_set_end:
  p->nSet++;
  p->u.aHash[h] = i;
  return SQLITE_OK;
}
