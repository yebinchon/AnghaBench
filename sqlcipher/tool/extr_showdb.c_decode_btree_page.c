
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_2__ {size_t pagesize; } ;


 int ISDIGIT (char) ;
 int decodeCell (unsigned char*,int,int,int,int) ;
 int describeCell (unsigned char,unsigned char*,int,char**) ;
 TYPE_1__ g ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,size_t) ;
 int print_decode_line (unsigned char*,int,int,char const*) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void decode_btree_page(
  unsigned char *a,
  int pgno,
  int hdrSize,
  char *zArgs
){
  const char *zType = "unknown";
  int nCell;
  int i, j;
  int iCellPtr;
  int showCellContent = 0;
  int showMap = 0;
  int cellToDecode = -2;
  char *zMap = 0;
  switch( a[0] ){
    case 2: zType = "index interior node"; break;
    case 5: zType = "table interior node"; break;
    case 10: zType = "index leaf"; break;
    case 13: zType = "table leaf"; break;
  }
  while( zArgs[0] ){
    switch( zArgs[0] ){
      case 'c': showCellContent = 1; break;
      case 'm': showMap = 1; break;
      case 'd': {
        if( !ISDIGIT(zArgs[1]) ){
          cellToDecode = -1;
        }else{
          cellToDecode = 0;
          while( ISDIGIT(zArgs[1]) ){
            zArgs++;
            cellToDecode = cellToDecode*10 + zArgs[0] - '0';
          }
        }
        break;
      }
    }
    zArgs++;
  }
  nCell = a[3]*256 + a[4];
  iCellPtr = (a[0]==2 || a[0]==5) ? 12 : 8;
  if( cellToDecode>=nCell ){
    printf("Page %d has only %d cells\n", pgno, nCell);
    return;
  }
  printf("Header on btree page %d:\n", pgno);
  print_decode_line(a, 0, 1, zType);
  print_decode_line(a, 1, 2, "Offset to first freeblock");
  print_decode_line(a, 3, 2, "Number of cells on this page");
  print_decode_line(a, 5, 2, "Offset to cell content area");
  print_decode_line(a, 7, 1, "Fragmented byte count");
  if( a[0]==2 || a[0]==5 ){
    print_decode_line(a, 8, 4, "Right child");
  }
  if( cellToDecode==(-2) && nCell>0 ){
    printf(" key: lx=left-child n=payload-size r=rowid\n");
  }
  if( showMap ){
    zMap = sqlite3_malloc(g.pagesize);
    memset(zMap, '.', g.pagesize);
    memset(zMap, '1', hdrSize);
    memset(&zMap[hdrSize], 'H', iCellPtr);
    memset(&zMap[hdrSize+iCellPtr], 'P', 2*nCell);
  }
  for(i=0; i<nCell; i++){
    int cofst = iCellPtr + i*2;
    char *zDesc;
    i64 n;

    cofst = a[cofst]*256 + a[cofst+1];
    n = describeCell(a[0], &a[cofst-hdrSize], showCellContent, &zDesc);
    if( showMap ){
      char zBuf[30];
      memset(&zMap[cofst], '*', (size_t)n);
      zMap[cofst] = '[';
      zMap[cofst+n-1] = ']';
      sprintf(zBuf, "%d", i);
      j = (int)strlen(zBuf);
      if( j<=n-2 ) memcpy(&zMap[cofst+1], zBuf, j);
    }
    if( cellToDecode==(-2) ){
      printf(" %03x: cell[%d] %s\n", cofst, i, zDesc);
    }else if( cellToDecode==(-1) || cellToDecode==i ){
      decodeCell(a, pgno, i, hdrSize, cofst-hdrSize);
    }
  }
  if( showMap ){
    printf("Page map:  (H=header P=cell-index 1=page-1-header .=free-space)\n");
    for(i=0; i<g.pagesize; i+=64){
      printf(" %03x: %.64s\n", i, &zMap[i]);
    }
    sqlite3_free(zMap);
  }
}
