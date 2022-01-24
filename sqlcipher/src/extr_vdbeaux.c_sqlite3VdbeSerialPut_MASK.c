#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int i; int nZero; int /*<<< orphan*/  r; } ;
struct TYPE_5__ {int n; int flags; int /*<<< orphan*/ * z; TYPE_1__ u; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Zero ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int* sqlite3SmallTypeSizes ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

u32 FUNC4(u8 *buf, Mem *pMem, u32 serial_type){
  u32 len;

  /* Integer and Real */
  if( serial_type<=7 && serial_type>0 ){
    u64 v;
    u32 i;
    if( serial_type==7 ){
      FUNC0( sizeof(v)==sizeof(pMem->u.r) );
      FUNC1(&v, &pMem->u.r, sizeof(v));
      FUNC3(v);
    }else{
      v = pMem->u.i;
    }
    len = i = sqlite3SmallTypeSizes[serial_type];
    FUNC0( i>0 );
    do{
      buf[--i] = (u8)(v&0xFF);
      v >>= 8;
    }while( i );
    return len;
  }

  /* String or blob */
  if( serial_type>=12 ){
    FUNC0( pMem->n + ((pMem->flags & MEM_Zero)?pMem->u.nZero:0)
             == (int)FUNC2(serial_type) );
    len = pMem->n;
    if( len>0 ) FUNC1(buf, pMem->z, len);
    return len;
  }

  /* NULL or constants 0 or 1 */
  return 0;
}