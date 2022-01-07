
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct group_data {int minLen; int maxLen; int* base; int* limit; int* permute; } ;
struct TYPE_4__ {int* dbuf; int dbufSize; int* selectors; int headerCRC; int inbufBitCount; scalar_t__ inbufPos; scalar_t__ inbufCount; int inbufBits; int* inbuf; int writeCurrent; int writePos; int writeRunCountdown; int writeCount; struct group_data* groups; int jmpbuf; } ;
typedef TYPE_1__ bunzip_data ;


 int GROUP_SIZE ;
 int INT_MAX ;
 int MAX_GROUPS ;
 int MAX_HUFCODE_BITS ;
 int MAX_SYMBOLS ;
 int RETVAL_DATA_ERROR ;
 int RETVAL_LAST_BLOCK ;
 int RETVAL_NOT_BZIP_DATA ;
 int RETVAL_OBSOLETE_INPUT ;
 int RETVAL_OK ;
 unsigned int SYMBOL_RUNB ;
 int dbg (char*,int,int,int,int) ;
 int get_bits (TYPE_1__*,int) ;
 int setjmp (int ) ;

__attribute__((used)) static int get_next_block(bunzip_data *bd)
{
 struct group_data *hufGroup;
 int dbufCount, dbufSize, groupCount, *base, *limit, selector,
  i, j, t, runPos, symCount, symTotal, nSelectors, byteCount[256];
 int runCnt;
 uint8_t uc, symToByte[256], mtfSymbol[256], *selectors;
 uint32_t *dbuf;
 unsigned origPtr;

 dbuf = bd->dbuf;
 dbufSize = bd->dbufSize;
 selectors = bd->selectors;
 i = get_bits(bd, 24);
 j = get_bits(bd, 24);
 bd->headerCRC = get_bits(bd, 32);
 if ((i == 0x177245) && (j == 0x385090)) return RETVAL_LAST_BLOCK;
 if ((i != 0x314159) || (j != 0x265359)) return RETVAL_NOT_BZIP_DATA;




 if (get_bits(bd, 1)) return RETVAL_OBSOLETE_INPUT;
 origPtr = get_bits(bd, 24);
 if ((int)origPtr > dbufSize) return RETVAL_DATA_ERROR;






 symTotal = 0;
 i = 0;
 t = get_bits(bd, 16);
 do {
  if (t & (1 << 15)) {
   unsigned inner_map = get_bits(bd, 16);
   do {
    if (inner_map & (1 << 15))
     symToByte[symTotal++] = i;
    inner_map <<= 1;
    i++;
   } while (i & 15);
   i -= 16;
  }
  t <<= 1;
  i += 16;
 } while (i < 256);


 groupCount = get_bits(bd, 3);
 if (groupCount < 2 || groupCount > MAX_GROUPS)
  return RETVAL_DATA_ERROR;





 for (i = 0; i < groupCount; i++)
  mtfSymbol[i] = i;
 nSelectors = get_bits(bd, 15);
 if (!nSelectors)
  return RETVAL_DATA_ERROR;
 for (i = 0; i < nSelectors; i++) {
  uint8_t tmp_byte;

  int n = 0;
  while (get_bits(bd, 1)) {
   if (n >= groupCount) return RETVAL_DATA_ERROR;
   n++;
  }

  tmp_byte = mtfSymbol[n];
  while (--n >= 0)
   mtfSymbol[n + 1] = mtfSymbol[n];
  mtfSymbol[0] = selectors[i] = tmp_byte;
 }



 symCount = symTotal + 2;
 for (j = 0; j < groupCount; j++) {
  uint8_t length[MAX_SYMBOLS];

  unsigned temp[MAX_HUFCODE_BITS+1];
  int minLen, maxLen, pp, len_m1;







  len_m1 = get_bits(bd, 5) - 1;
  for (i = 0; i < symCount; i++) {
   for (;;) {
    int two_bits;
    if ((unsigned)len_m1 > (MAX_HUFCODE_BITS-1))
     return RETVAL_DATA_ERROR;




    two_bits = get_bits(bd, 2);
    if (two_bits < 2) {
     bd->inbufBitCount++;
     break;
    }


    len_m1 += (((two_bits+1) & 2) - 1);
   }


   length[i] = len_m1 + 1;
  }


  minLen = maxLen = length[0];
  for (i = 1; i < symCount; i++) {
   if (length[i] > maxLen) maxLen = length[i];
   else if (length[i] < minLen) minLen = length[i];
  }
  hufGroup = bd->groups + j;
  hufGroup->minLen = minLen;
  hufGroup->maxLen = maxLen;




  base = hufGroup->base - 1;
  limit = hufGroup->limit - 1;


  pp = 0;
  for (i = minLen; i <= maxLen; i++) {
   int k;
   temp[i] = limit[i] = 0;
   for (k = 0; k < symCount; k++)
    if (length[k] == i)
     hufGroup->permute[pp++] = k;
  }




  for (i = 0; i < symCount; i++) temp[length[i]]++;





  pp = t = 0;
  for (i = minLen; i < maxLen;) {
   unsigned temp_i = temp[i];

   pp += temp_i;







   limit[i] = (pp << (maxLen - i)) - 1;
   pp <<= 1;
   t += temp_i;
   base[++i] = pp - t;
  }
  limit[maxLen] = pp + temp[maxLen] - 1;
  limit[maxLen+1] = INT_MAX;
  base[minLen] = 0;
 }







 for (i = 0; i < 256; i++) {
  byteCount[i] = 0;
  mtfSymbol[i] = (uint8_t)i;
 }



 runPos = dbufCount = selector = 0;
 for (;;) {
  int nextSym;


  symCount = GROUP_SIZE - 1;
  if (selector >= nSelectors) return RETVAL_DATA_ERROR;
  hufGroup = bd->groups + selectors[selector++];
  base = hufGroup->base - 1;
  limit = hufGroup->limit - 1;

 continue_this_group:
  if (1) {



   int new_cnt;
   while ((new_cnt = bd->inbufBitCount - hufGroup->maxLen) < 0) {

    if (bd->inbufPos == bd->inbufCount) {
     nextSym = get_bits(bd, hufGroup->maxLen);
     goto got_huff_bits;
    }
    bd->inbufBits = (bd->inbufBits << 8) | bd->inbuf[bd->inbufPos++];
    bd->inbufBitCount += 8;
   };
   bd->inbufBitCount = new_cnt;
   nextSym = (bd->inbufBits >> new_cnt) & ((1 << hufGroup->maxLen) - 1);
 got_huff_bits: ;
  } else {
   nextSym = get_bits(bd, hufGroup->maxLen);
  }

  i = hufGroup->minLen;
  while (nextSym > limit[i]) ++i;
  j = hufGroup->maxLen - i;
  if (j < 0)
   return RETVAL_DATA_ERROR;
  bd->inbufBitCount += j;


  nextSym = (nextSym >> j) - base[i];
  if ((unsigned)nextSym >= MAX_SYMBOLS)
   return RETVAL_DATA_ERROR;
  nextSym = hufGroup->permute[nextSym];





  if ((unsigned)nextSym <= SYMBOL_RUNB) {


   if (runPos == 0) {
    runPos = 1;
    runCnt = 0;
   }
   runCnt += (runPos << nextSym);
   if (runPos < dbufSize) runPos <<= 1;
   goto end_of_huffman_loop;
  }





  if (runPos != 0) {
   uint8_t tmp_byte;
   if (dbufCount + runCnt > dbufSize) {
    dbg("dbufCount:%d+runCnt:%d %d > dbufSize:%d RETVAL_DATA_ERROR",
      dbufCount, runCnt, dbufCount + runCnt, dbufSize);
    return RETVAL_DATA_ERROR;
   }
   tmp_byte = symToByte[mtfSymbol[0]];
   byteCount[tmp_byte] += runCnt;
   while (--runCnt >= 0) dbuf[dbufCount++] = (uint32_t)tmp_byte;
   runPos = 0;
  }


  if (nextSym > symTotal) break;
  if (dbufCount >= dbufSize) return RETVAL_DATA_ERROR;
  i = nextSym - 1;
  uc = mtfSymbol[i];





  do {
   mtfSymbol[i] = mtfSymbol[i-1];
  } while (--i);
  mtfSymbol[0] = uc;
  uc = symToByte[uc];


  byteCount[uc]++;
  dbuf[dbufCount++] = (uint32_t)uc;



 end_of_huffman_loop:
  if (--symCount >= 0) goto continue_this_group;
 }
 j = 0;
 for (i = 0; i < 256; i++) {
  int tmp_count = j + byteCount[i];
  byteCount[i] = j;
  j = tmp_count;
 }


 for (i = 0; i < dbufCount; i++) {
  uint8_t tmp_byte = (uint8_t)dbuf[i];
  int tmp_count = byteCount[tmp_byte];
  dbuf[tmp_count] |= (i << 8);
  byteCount[tmp_byte] = tmp_count + 1;
 }




 if (dbufCount) {
  uint32_t tmp;
  if ((int)origPtr >= dbufCount) return RETVAL_DATA_ERROR;
  tmp = dbuf[origPtr];
  bd->writeCurrent = (uint8_t)tmp;
  bd->writePos = (tmp >> 8);
  bd->writeRunCountdown = 5;
 }
 bd->writeCount = dbufCount;

 return RETVAL_OK;
}
