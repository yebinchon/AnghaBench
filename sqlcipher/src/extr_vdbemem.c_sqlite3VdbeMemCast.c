
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int flags; TYPE_1__* db; } ;
struct TYPE_9__ {int mallocFailed; } ;
typedef TYPE_2__ Mem ;


 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;
 int MEM_TypeMask ;
 int MEM_Zero ;
 int MemSetTypeFlag (TYPE_2__*,int) ;




 int SQLITE_AFF_TEXT ;
 int assert (int) ;
 int sqlite3ValueApplyAffinity (TYPE_2__*,int,int) ;
 int sqlite3VdbeMemIntegerify (TYPE_2__*) ;
 int sqlite3VdbeMemNumerify (TYPE_2__*) ;
 int sqlite3VdbeMemRealify (TYPE_2__*) ;

void sqlite3VdbeMemCast(Mem *pMem, u8 aff, u8 encoding){
  if( pMem->flags & MEM_Null ) return;
  switch( aff ){
    case 131: {
      if( (pMem->flags & MEM_Blob)==0 ){
        sqlite3ValueApplyAffinity(pMem, SQLITE_AFF_TEXT, encoding);
        assert( pMem->flags & MEM_Str || pMem->db->mallocFailed );
        if( pMem->flags & MEM_Str ) MemSetTypeFlag(pMem, MEM_Blob);
      }else{
        pMem->flags &= ~(MEM_TypeMask&~MEM_Blob);
      }
      break;
    }
    case 129: {
      sqlite3VdbeMemNumerify(pMem);
      break;
    }
    case 130: {
      sqlite3VdbeMemIntegerify(pMem);
      break;
    }
    case 128: {
      sqlite3VdbeMemRealify(pMem);
      break;
    }
    default: {
      assert( aff==SQLITE_AFF_TEXT );
      assert( MEM_Str==(MEM_Blob>>3) );
      pMem->flags |= (pMem->flags&MEM_Blob)>>3;
      sqlite3ValueApplyAffinity(pMem, SQLITE_AFF_TEXT, encoding);
      assert( pMem->flags & MEM_Str || pMem->db->mallocFailed );
      pMem->flags &= ~(MEM_Int|MEM_Real|MEM_Blob|MEM_Zero);
      break;
    }
  }
}
