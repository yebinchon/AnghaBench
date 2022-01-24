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
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 unsigned int NHASH ; 
 unsigned int FUNC0 (char const*,unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int* FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(
  const char *zSrc,      /* The source or pattern file */
  unsigned int lenSrc,   /* Length of the source file */
  const char *zOut,      /* The target file */
  unsigned int lenOut,   /* Length of the target file */
  char *zDelta           /* Write the delta into this buffer */
){
  unsigned int i, base;
  char *zOrigDelta = zDelta;
  hash h;
  int nHash;                 /* Number of hash table entries */
  int *landmark;             /* Primary hash table */
  int *collide;              /* Collision chain */
  int lastRead = -1;         /* Last byte of zSrc read by a COPY command */

  /* Add the target file size to the beginning of the delta
  */
  FUNC7(lenOut, &zDelta);
  *(zDelta++) = '\n';

  /* If the source file is very small, it means that we have no
  ** chance of ever doing a copy command.  Just output a single
  ** literal segment for the entire target and exit.
  */
  if( lenSrc<=NHASH ){
    FUNC7(lenOut, &zDelta);
    *(zDelta++) = ':';
    FUNC5(zDelta, zOut, lenOut);
    zDelta += lenOut;
    FUNC7(FUNC0(zOut, lenOut), &zDelta);
    *(zDelta++) = ';';
    return (int)(zDelta - zOrigDelta);
  }

  /* Compute the hash table used to locate matching sections in the
  ** source file.
  */
  nHash = lenSrc/NHASH;
  collide = FUNC9( nHash*2*sizeof(int) );
  landmark = &collide[nHash];
  FUNC6(landmark, -1, nHash*sizeof(int));
  FUNC6(collide, -1, nHash*sizeof(int));
  for(i=0; i<lenSrc-NHASH; i+=NHASH){
    int hv;
    FUNC3(&h, &zSrc[i]);
    hv = FUNC2(&h) % nHash;
    collide[i/NHASH] = landmark[hv];
    landmark[hv] = i/NHASH;
  }

  /* Begin scanning the target file and generating copy commands and
  ** literal sections of the delta.
  */
  base = 0;    /* We have already generated everything before zOut[base] */
  while( base+NHASH<lenOut ){
    int iSrc, iBlock;
    int bestCnt, bestOfst=0, bestLitsz=0;
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

        /* Beginning at iSrc, match forwards as far as we can.  j counts
        ** the number of characters that match */
        iSrc = iBlock*NHASH;
        for(
          j=0, x=iSrc, y=base+i;
          (unsigned int)x<lenSrc && (unsigned int)y<lenOut;
          j++, x++, y++
        ){
          if( zSrc[x]!=zOut[y] ) break;
        }
        j--;

        /* Beginning at iSrc-1, match backwards as far as we can.  k counts
        ** the number of characters that match */
        for(k=1; k<iSrc && (unsigned int)k<=i; k++){
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
          FUNC7(bestLitsz,&zDelta);
          *(zDelta++) = ':';
          FUNC5(zDelta, &zOut[base], bestLitsz);
          zDelta += bestLitsz;
          base += bestLitsz;
        }
        base += bestCnt;
        FUNC7(bestCnt, &zDelta);
        *(zDelta++) = '@';
        FUNC7(bestOfst, &zDelta);
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
        FUNC7(lenOut-base, &zDelta);
        *(zDelta++) = ':';
        FUNC5(zDelta, &zOut[base], lenOut-base);
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
    FUNC7(lenOut-base, &zDelta);
    *(zDelta++) = ':';
    FUNC5(zDelta, &zOut[base], lenOut-base);
    zDelta += lenOut-base;
  }
  /* Output the final checksum record. */
  FUNC7(FUNC0(zOut, lenOut), &zDelta);
  *(zDelta++) = ';';
  FUNC8(collide);
  return (int)(zDelta - zOrigDelta);
}