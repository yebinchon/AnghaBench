
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int i64 ;
struct TYPE_6__ {int i; scalar_t__ nZero; } ;
struct TYPE_7__ {int flags; scalar_t__ n; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_5__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ Mem ;


 int MAX_6BYTE ;
 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;
 int MEM_Zero ;
 int assert (int) ;

u32 sqlite3VdbeSerialType(Mem *pMem, int file_format, u32 *pLen){
  int flags = pMem->flags;
  u32 n;

  assert( pLen!=0 );
  if( flags&MEM_Null ){
    *pLen = 0;
    return 0;
  }
  if( flags&MEM_Int ){


    i64 i = pMem->u.i;
    u64 u;
    if( i<0 ){
      u = ~i;
    }else{
      u = i;
    }
    if( u<=127 ){
      if( (i&1)==i && file_format>=4 ){
        *pLen = 0;
        return 8+(u32)u;
      }else{
        *pLen = 1;
        return 1;
      }
    }
    if( u<=32767 ){ *pLen = 2; return 2; }
    if( u<=8388607 ){ *pLen = 3; return 3; }
    if( u<=2147483647 ){ *pLen = 4; return 4; }
    if( u<=((((i64)0x00008000)<<32)-1) ){ *pLen = 6; return 5; }
    *pLen = 8;
    return 6;
  }
  if( flags&MEM_Real ){
    *pLen = 8;
    return 7;
  }
  assert( pMem->db->mallocFailed || flags&(MEM_Str|MEM_Blob) );
  assert( pMem->n>=0 );
  n = (u32)pMem->n;
  if( flags & MEM_Zero ){
    n += pMem->u.nZero;
  }
  *pLen = n;
  return ((n*2) + 12 + ((flags&MEM_Str)!=0));
}
