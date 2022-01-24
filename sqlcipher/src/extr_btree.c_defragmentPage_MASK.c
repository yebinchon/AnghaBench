#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct TYPE_7__ {scalar_t__ nOverflow; unsigned char* aData; int hdrOffset; int cellOffset; int nCell; int (* xCellSize ) (TYPE_2__*,unsigned char*) ;unsigned char nFree; int /*<<< orphan*/  pDbPage; TYPE_1__* pBt; } ;
struct TYPE_6__ {int usableSize; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int FUNC0 (TYPE_2__*) ; 
 int SQLITE_MAX_PAGE_SIZE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(MemPage *pPage, int nMaxFrag){
  int i;                     /* Loop counter */
  int pc;                    /* Address of the i-th cell */
  int hdr;                   /* Offset to the page header */
  int size;                  /* Size of a cell */
  int usableSize;            /* Number of usable bytes on a page */
  int cellOffset;            /* Offset to the cell pointer array */
  int cbrk;                  /* Offset to the cell content area */
  int nCell;                 /* Number of cells on the page */
  unsigned char *data;       /* The page data */
  unsigned char *temp;       /* Temp area for cell content */
  unsigned char *src;        /* Source of content */
  int iCellFirst;            /* First allowable cell index */
  int iCellLast;             /* Last possible cell index */

  FUNC1( FUNC7(pPage->pDbPage) );
  FUNC1( pPage->pBt!=0 );
  FUNC1( pPage->pBt->usableSize <= SQLITE_MAX_PAGE_SIZE );
  FUNC1( pPage->nOverflow==0 );
  FUNC1( FUNC9(pPage->pBt->mutex) );
  temp = 0;
  src = data = pPage->aData;
  hdr = pPage->hdrOffset;
  cellOffset = pPage->cellOffset;
  nCell = pPage->nCell;
  FUNC1( nCell==FUNC2(&data[hdr+3]) || CORRUPT_DB );
  iCellFirst = cellOffset + 2*nCell;
  usableSize = pPage->pBt->usableSize;

  /* This block handles pages with two or fewer free blocks and nMaxFrag
  ** or fewer fragmented bytes. In this case it is faster to move the
  ** two (or one) blocks of cells using memmove() and add the required
  ** offsets to each pointer in the cell-pointer array than it is to 
  ** reconstruct the entire page.  */
  if( (int)data[hdr+7]<=nMaxFrag ){
    int iFree = FUNC2(&data[hdr+1]);
    if( iFree>usableSize-4 ) return FUNC0(pPage);
    if( iFree ){
      int iFree2 = FUNC2(&data[iFree]);
      if( iFree2>usableSize-4 ) return FUNC0(pPage);
      if( 0==iFree2 || (data[iFree2]==0 && data[iFree2+1]==0) ){
        u8 *pEnd = &data[cellOffset + nCell*2];
        u8 *pAddr;
        int sz2 = 0;
        int sz = FUNC2(&data[iFree+2]);
        int top = FUNC2(&data[hdr+5]);
        if( top>=iFree ){
          return FUNC0(pPage);
        }
        if( iFree2 ){
          if( iFree+sz>iFree2 ) return FUNC0(pPage);
          sz2 = FUNC2(&data[iFree2+2]);
          if( iFree2+sz2 > usableSize ) return FUNC0(pPage);
          FUNC4(&data[iFree+sz+sz2], &data[iFree+sz], iFree2-(iFree+sz));
          sz += sz2;
        }else if( iFree+sz>usableSize ){
          return FUNC0(pPage);
        }

        cbrk = top+sz;
        FUNC1( cbrk+(iFree-top) <= usableSize );
        FUNC4(&data[cbrk], &data[top], iFree-top);
        for(pAddr=&data[cellOffset]; pAddr<pEnd; pAddr+=2){
          pc = FUNC2(pAddr);
          if( pc<iFree ){ FUNC6(pAddr, pc+sz); }
          else if( pc<iFree2 ){ FUNC6(pAddr, pc+sz2); }
        }
        goto defragment_out;
      }
    }
  }

  cbrk = usableSize;
  iCellLast = usableSize - 4;
  for(i=0; i<nCell; i++){
    u8 *pAddr;     /* The i-th cell pointer */
    pAddr = &data[cellOffset + i*2];
    pc = FUNC2(pAddr);
    FUNC11( pc==iCellFirst );
    FUNC11( pc==iCellLast );
    /* These conditions have already been verified in btreeInitPage()
    ** if PRAGMA cell_size_check=ON.
    */
    if( pc<iCellFirst || pc>iCellLast ){
      return FUNC0(pPage);
    }
    FUNC1( pc>=iCellFirst && pc<=iCellLast );
    size = pPage->xCellSize(pPage, &src[pc]);
    cbrk -= size;
    if( cbrk<iCellFirst || pc+size>usableSize ){
      return FUNC0(pPage);
    }
    FUNC1( cbrk+size<=usableSize && cbrk>=iCellFirst );
    FUNC11( cbrk+size==usableSize );
    FUNC11( pc+size==usableSize );
    FUNC6(pAddr, cbrk);
    if( temp==0 ){
      int x;
      if( cbrk==pc ) continue;
      temp = FUNC8(pPage->pBt->pPager);
      x = FUNC2(&data[hdr+5]);
      FUNC3(&temp[x], &data[x], (cbrk+size) - x);
      src = temp;
    }
    FUNC3(&data[cbrk], &src[pc], size);
  }
  data[hdr+7] = 0;

 defragment_out:
  FUNC1( pPage->nFree>=0 );
  if( data[hdr+7]+cbrk-iCellFirst!=pPage->nFree ){
    return FUNC0(pPage);
  }
  FUNC1( cbrk>=iCellFirst );
  FUNC6(&data[hdr+5], cbrk);
  data[hdr+1] = 0;
  data[hdr+2] = 0;
  FUNC5(&data[iCellFirst], 0, cbrk-iCellFirst);
  FUNC1( FUNC7(pPage->pDbPage) );
  return SQLITE_OK;
}