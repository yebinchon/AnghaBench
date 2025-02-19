
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ i64 ;
struct TYPE_10__ {int r1; int r2; int nField; int default_rc; int eqSeen; TYPE_2__* aMem; int pKeyInfo; } ;
typedef TYPE_3__ UnpackedRecord ;
struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_9__ {TYPE_1__ u; } ;


 scalar_t__ CORRUPT_DB ;
 int FOUR_BYTE_UINT (int const*) ;
 scalar_t__ ONE_BYTE_INT (int const*) ;
 scalar_t__ THREE_BYTE_INT (int const*) ;
 scalar_t__ TWO_BYTE_INT (int const*) ;
 int assert (int) ;
 int sqlite3VdbeRecordCompare (int,void const*,TYPE_3__*) ;
 int sqlite3VdbeRecordCompareWithSkip (int,void const*,TYPE_3__*,int) ;
 int testcase (int) ;
 int vdbeAssertFieldCountWithinLimits (int,void const*,int ) ;
 int vdbeRecordCompareDebug (int,void const*,TYPE_3__*,int) ;

__attribute__((used)) static int vdbeRecordCompareInt(
  int nKey1, const void *pKey1,
  UnpackedRecord *pPKey2
){
  const u8 *aKey = &((const u8*)pKey1)[*(const u8*)pKey1 & 0x3F];
  int serial_type = ((const u8*)pKey1)[1];
  int res;
  u32 y;
  u64 x;
  i64 v;
  i64 lhs;

  vdbeAssertFieldCountWithinLimits(nKey1, pKey1, pPKey2->pKeyInfo);
  assert( (*(u8*)pKey1)<=0x3F || CORRUPT_DB );
  switch( serial_type ){
    case 1: {
      lhs = ONE_BYTE_INT(aKey);
      testcase( lhs<0 );
      break;
    }
    case 2: {
      lhs = TWO_BYTE_INT(aKey);
      testcase( lhs<0 );
      break;
    }
    case 3: {
      lhs = THREE_BYTE_INT(aKey);
      testcase( lhs<0 );
      break;
    }
    case 4: {
      y = FOUR_BYTE_UINT(aKey);
      lhs = (i64)*(int*)&y;
      testcase( lhs<0 );
      break;
    }
    case 5: {
      lhs = FOUR_BYTE_UINT(aKey+2) + (((i64)1)<<32)*TWO_BYTE_INT(aKey);
      testcase( lhs<0 );
      break;
    }
    case 6: {
      x = FOUR_BYTE_UINT(aKey);
      x = (x<<32) | FOUR_BYTE_UINT(aKey+4);
      lhs = *(i64*)&x;
      testcase( lhs<0 );
      break;
    }
    case 8:
      lhs = 0;
      break;
    case 9:
      lhs = 1;
      break;







    case 0: case 7:
      return sqlite3VdbeRecordCompare(nKey1, pKey1, pPKey2);

    default:
      return sqlite3VdbeRecordCompare(nKey1, pKey1, pPKey2);
  }

  v = pPKey2->aMem[0].u.i;
  if( v>lhs ){
    res = pPKey2->r1;
  }else if( v<lhs ){
    res = pPKey2->r2;
  }else if( pPKey2->nField>1 ){


    res = sqlite3VdbeRecordCompareWithSkip(nKey1, pKey1, pPKey2, 1);
  }else{


    res = pPKey2->default_rc;
    pPKey2->eqSeen = 1;
  }

  assert( vdbeRecordCompareDebug(nKey1, pKey1, pPKey2, res) );
  return res;
}
