
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_7__ {scalar_t__ enc; } ;
typedef TYPE_2__ sqlite3_value ;
struct TYPE_6__ {int nZero; } ;
struct TYPE_8__ {int flags; int n; TYPE_1__ u; } ;
typedef TYPE_3__ Mem ;


 int MEM_Blob ;
 int MEM_Null ;
 int MEM_Str ;
 int MEM_Zero ;
 int assert (int) ;
 int valueBytes (TYPE_2__*,scalar_t__) ;

int sqlite3ValueBytes(sqlite3_value *pVal, u8 enc){
  Mem *p = (Mem*)pVal;
  assert( (p->flags & MEM_Null)==0 || (p->flags & (MEM_Str|MEM_Blob))==0 );
  if( (p->flags & MEM_Str)!=0 && pVal->enc==enc ){
    return p->n;
  }
  if( (p->flags & MEM_Blob)!=0 ){
    if( p->flags & MEM_Zero ){
      return p->n + p->u.nZero;
    }else{
      return p->n;
    }
  }
  if( p->flags & MEM_Null ) return 0;
  return valueBytes(pVal, enc);
}
