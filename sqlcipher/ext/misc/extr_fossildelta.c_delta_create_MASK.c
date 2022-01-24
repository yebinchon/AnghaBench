#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 unsigned int NHASH ; 
 unsigned int FUNC0 (char const*,unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(
  const char *zSrc,      /* The source or pattern file */
  unsigned int lenSrc,   /* Length of the source file */
  const char *zOut,      /* The target file */
  unsigned int lenOut,   /* Length of the target file */
  char *zDelta           /* Write the delta into this buffer */
){
  int i, base;
  char *zOrigDelta = zDelta;
  hash h;
  int nHash;                 /* Number of hash table entries */
  int *landmark;             /* Primary hash table */
  int *collide;              /* Collision chain */
  int lastRead = -1;         /* Last byte of zSrc read by a COPY command */

  /* Add the target file size to the beginning of the delta
  */
  FUNC8(lenOut, &zDelta);
  *(zDelta++) = '\n';

  /* If the source file is very small, it means that we have no
  ** chance of ever doing a copy command.  Just output a single
  ** literal segment for the entire target and exit.
  */
  if( lenSrc<=NHASH ){
    FUNC8(lenOut, &zDelta);
    *(zDelta++) = ':';
    FUNC6(zDelta, zOut, lenOut);
    zDelta += lenOut;
    FUNC8(FUNC0(zOut, lenOut), &zDelta);
    *(zDelta++) = ';';
    return zDelta - zOrigDelta;
  }

  /* Compute the hash table used to locate matching sections in the
  ** source file.
  */
  nHash = lenSrc/NHASH;
  collide = FUNC10( (sqlite3_int64)nHash*2*sizeof(int) );
  FUNC7(collide, -1, nHash*2*sizeof(int));
  landmark = &collide[nHash];
  for(i=0; i<lenSrc-NHASH; i+=NHASH){
    int hv = FUNC5(&zSrc[i]) % nHash;
    collide[i/NHASH] = landmark[hv];
    landmark[hv] = i/NHASH;
  }

  /* Begin scanning the target file and generating copy commands and
  ** literal sections of the delta.
  */
  base = 0;    /* We have already generated everything before zOut[base] */
  while( base+NHASH<lenOut ){
    int iSrc, iBlock;
    unsigned int bestCnt, bestOfst=0, bestLitsz=0;
    FUNC3(&h, &zOut[base]);
    i = 0;     /* Trying to match a landmark against zOut[base+i] */
    bestCnt = 0;
    while( 1 ){
      int hv;
      int limit = 250;

      hv = FUNC2(&h) % nHash;
      iBlock = landmark[hv];
      while( iBlock>=0 && (limit--)>0 ){
        /*
        ** The hash window has identified a potential match against
        ** landmark block iBlock.  But we need to investigate further.
        **
        ** Look for a region in zOut that matches zSrc. Anchor the search
        ** at zSrc[iSrc] and zOut[base+i].  Do not include anything prior to
        ** zOut[base] or after zOut[outLen] nor anything after zSrc[srcLen].
        **
        ** Set cnt equal to the length of the match and set ofst so that
        ** zSrc[ofst] is the first element of the match.  litsz is the number
        ** of characters between zOut[base] and the beginning of the match.
        ** sz will be the overhead (in bytes) needed to encode the copy
        ** command.  Only generate copy command if the overhead of the
        ** copy command is less than the amount of literal text to be copied.
        */
        int cnt, ofst, litsz;
        int j, k, x, y;
        int sz;
        int limitX;

        /* Beginning at iSrc, match forwards as far as we can.  j counts
        ** the number of characters that match */
        iSrc = iBlock*NHASH;
        y = base+i;
        limitX = ( lenSrc-iSrc <= lenOut-y ) ? lenSrc : iSrc + lenOut - y;
        for(x=iSrc; x<limitX; x++, y++){
          if( zSrc[x]!=zOut[y] ) break;
        }
        j = x - iSrc - 1;

        /* Beginning at iSrc-1, match backwards as far as we can.  k counts
        ** the number of characters that match */
        for(k=1; k<iSrc && k<=i; k++){
          if( zSrc[iSrc-k]!=zOut[base+i-k] ) break;
        }
        k--;

        /* Compute the offset and size of the matching region */
        ofst = iSrc-k;
        cnt = j+k+1;
        litsz = i-k;  /* Number of bytes of literal text before the copy */
        /* sz will hold the number of bytes needed to encode the "insert"
        ** command and the copy command, not counting the "insert" text */
        sz = FUNC1(i-k)+FUNC1(cnt)+FUNC1(ofst)+3;
        if( cnt>=sz && cnt>bestCnt ){
          /* Remember this match only if it is the best so far and it
          ** does not increase the file size */
          bestCnt = cnt;
          bestOfst = iSrc-k;
          bestLitsz = litsz;
        }

        /* Check the next matching block */
        iBlock = collide[iBlock];
      }

      /* We have a copy command that does not cause the delta to be larger
      ** than a literal insert.  So add the copy command to the delta.
      */
      if( bestCnt>0 ){
        if( bestLitsz>0 ){
          /* Add an insert command before the copy */
          FUNC8(bestLitsz,&zDelta);
          *(zDelta++) = ':';
          FUNC6(zDelta, &zOut[base], bestLitsz);
          zDelta += bestLitsz;
          base += bestLitsz;
        }
        base += bestCnt;
        FUNC8(bestCnt, &zDelta);
        *(zDelta++) = '@';
        FUNC8(bestOfst, &zDelta);
        *(zDelta++) = ',';
        if( bestOfst + bestCnt -1 > lastRead ){
          lastRead = bestOfst + bestCnt - 1;
        }
        bestCnt = 0;
        break;
      }

      /* If we reach this point, it means no match is found so far */
      if( base+i+NHASH>=lenOut ){
        /* We have reached the end of the file and have not found any
        ** matches.  Do an "insert" for everything that does not match */
        FUNC8(lenOut-base, &zDelta);
        *(zDelta++) = ':';
        FUNC6(zDelta, &zOut[base], lenOut-base);
        zDelta += lenOut-base;
        base = lenOut;
        break;
      }

      /* Advance the hash by one character.  Keep looking for a match */
      FUNC4(&h, zOut[base+i+NHASH]);
      i++;
    }
  }
  /* Output a final "insert" record to get all the text at the end of
  ** the file that does not match anything in the source file.
  */
  if( base<lenOut ){
    FUNC8(lenOut-base, &zDelta);
    *(zDelta++) = ':';
    FUNC6(zDelta, &zOut[base], lenOut-base);
    zDelta += lenOut-base;
  }
  /* Output the final checksum record. */
  FUNC8(FUNC0(zOut, lenOut), &zDelta);
  *(zDelta++) = ';';
  FUNC9(collide);
  return zDelta - zOrigDelta;
}