
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int flags; int enc; void const* z; TYPE_1__* db; } ;
typedef TYPE_2__ sqlite3_value ;
struct TYPE_7__ {int mutex; } ;


 int MEM_Null ;
 int MEM_Str ;
 int MEM_Term ;
 int SQLITE_UTF16_ALIGNED ;
 int assert (int) ;
 int sqlite3VdbeMemConsistentDualRep (TYPE_2__*) ;
 int sqlite3VdbeMemIsRowSet (TYPE_2__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 void const* valueToText (TYPE_2__*,int) ;

const void *sqlite3ValueText(sqlite3_value* pVal, u8 enc){
  if( !pVal ) return 0;
  assert( pVal->db==0 || sqlite3_mutex_held(pVal->db->mutex) );
  assert( (enc&3)==(enc&~SQLITE_UTF16_ALIGNED) );
  assert( !sqlite3VdbeMemIsRowSet(pVal) );
  if( (pVal->flags&(MEM_Str|MEM_Term))==(MEM_Str|MEM_Term) && pVal->enc==enc ){
    assert( sqlite3VdbeMemConsistentDualRep(pVal) );
    return pVal->z;
  }
  if( pVal->flags&MEM_Null ){
    return 0;
  }
  return valueToText(pVal, enc);
}
