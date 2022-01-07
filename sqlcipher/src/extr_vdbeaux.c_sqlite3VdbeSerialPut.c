
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int i; int nZero; int r; } ;
struct TYPE_5__ {int n; int flags; int * z; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int MEM_Zero ;
 int assert (int) ;
 int memcpy (int*,int *,int) ;
 int* sqlite3SmallTypeSizes ;
 scalar_t__ sqlite3VdbeSerialTypeLen (int) ;
 int swapMixedEndianFloat (int) ;

u32 sqlite3VdbeSerialPut(u8 *buf, Mem *pMem, u32 serial_type){
  u32 len;


  if( serial_type<=7 && serial_type>0 ){
    u64 v;
    u32 i;
    if( serial_type==7 ){
      assert( sizeof(v)==sizeof(pMem->u.r) );
      memcpy(&v, &pMem->u.r, sizeof(v));
      swapMixedEndianFloat(v);
    }else{
      v = pMem->u.i;
    }
    len = i = sqlite3SmallTypeSizes[serial_type];
    assert( i>0 );
    do{
      buf[--i] = (u8)(v&0xFF);
      v >>= 8;
    }while( i );
    return len;
  }


  if( serial_type>=12 ){
    assert( pMem->n + ((pMem->flags & MEM_Zero)?pMem->u.nZero:0)
             == (int)sqlite3VdbeSerialTypeLen(serial_type) );
    len = pMem->n;
    if( len>0 ) memcpy(buf, pMem->z, len);
    return len;
  }


  return 0;
}
