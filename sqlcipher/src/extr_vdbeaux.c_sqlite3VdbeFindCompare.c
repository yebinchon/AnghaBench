
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int r1; int r2; TYPE_2__* pKeyInfo; TYPE_1__* aMem; } ;
typedef TYPE_3__ UnpackedRecord ;
struct TYPE_6__ {int nAllField; scalar_t__* aColl; scalar_t__* aSortOrder; } ;
struct TYPE_5__ {int flags; } ;
typedef int RecordCompare ;


 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;
 int assert (int) ;
 int sqlite3VdbeRecordCompare ;
 int testcase (int) ;
 int vdbeRecordCompareInt ;
 int vdbeRecordCompareString ;

RecordCompare sqlite3VdbeFindCompare(UnpackedRecord *p){
  if( p->pKeyInfo->nAllField<=13 ){
    int flags = p->aMem[0].flags;
    if( p->pKeyInfo->aSortOrder[0] ){
      p->r1 = 1;
      p->r2 = -1;
    }else{
      p->r1 = -1;
      p->r2 = 1;
    }
    if( (flags & MEM_Int) ){
      return vdbeRecordCompareInt;
    }
    testcase( flags & MEM_Real );
    testcase( flags & MEM_Null );
    testcase( flags & MEM_Blob );
    if( (flags & (MEM_Real|MEM_Null|MEM_Blob))==0 && p->pKeyInfo->aColl[0]==0 ){
      assert( flags & MEM_Str );
      return vdbeRecordCompareString;
    }
  }

  return sqlite3VdbeRecordCompare;
}
