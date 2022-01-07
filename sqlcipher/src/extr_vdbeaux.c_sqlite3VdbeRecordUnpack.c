
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct TYPE_9__ {scalar_t__ nField; scalar_t__ default_rc; TYPE_2__* aMem; } ;
typedef TYPE_1__ UnpackedRecord ;
struct TYPE_11__ {scalar_t__ nKeyField; int db; int enc; } ;
struct TYPE_10__ {scalar_t__ z; scalar_t__ szMalloc; int db; int enc; } ;
typedef TYPE_2__ Mem ;
typedef TYPE_3__ KeyInfo ;


 int CORRUPT_DB ;
 int EIGHT_BYTE_ALIGNMENT (TYPE_2__*) ;
 int assert (int) ;
 size_t getVarint32 (unsigned char const*,size_t) ;
 int sqlite3VdbeMemSetNull (TYPE_2__*) ;
 scalar_t__ sqlite3VdbeSerialGet (unsigned char const*,size_t,TYPE_2__*) ;

void sqlite3VdbeRecordUnpack(
  KeyInfo *pKeyInfo,
  int nKey,
  const void *pKey,
  UnpackedRecord *p
){
  const unsigned char *aKey = (const unsigned char *)pKey;
  u32 d;
  u32 idx;
  u16 u;
  u32 szHdr;
  Mem *pMem = p->aMem;

  p->default_rc = 0;
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );
  idx = getVarint32(aKey, szHdr);
  d = szHdr;
  u = 0;
  while( idx<szHdr && d<=(u32)nKey ){
    u32 serial_type;

    idx += getVarint32(&aKey[idx], serial_type);
    pMem->enc = pKeyInfo->enc;
    pMem->db = pKeyInfo->db;

    pMem->szMalloc = 0;
    pMem->z = 0;
    d += sqlite3VdbeSerialGet(&aKey[d], serial_type, pMem);
    pMem++;
    if( (++u)>=p->nField ) break;
  }
  if( d>(u32)nKey && u ){
    assert( CORRUPT_DB );



    sqlite3VdbeMemSetNull(pMem-1);
  }
  assert( u<=pKeyInfo->nKeyField + 1 );
  p->nField = u;
}
