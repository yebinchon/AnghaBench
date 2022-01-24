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
typedef  int /*<<< orphan*/  zReverse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,char*,int*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char**,char*,char*,scalar_t__ (*) (char*)) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(const char *zIn, int nIn, char *zOut, int *pnOut){
  int i, j, c;
  char zReverse[28];
  char *z, *z2;
  if( nIn<3 || nIn>=sizeof(zReverse)-7 ){
    /* The word is too big or too small for the porter stemmer.
    ** Fallback to the copy stemmer */
    FUNC0(zIn, nIn, zOut, pnOut);
    return;
  }
  for(i=0, j=sizeof(zReverse)-6; i<nIn; i++, j--){
    c = zIn[i];
    if( c>='A' && c<='Z' ){
      zReverse[j] = c + 'a' - 'A';
    }else if( c>='a' && c<='z' ){
      zReverse[j] = c;
    }else{
      /* The use of a character not in [a-zA-Z] means that we fallback
      ** to the copy stemmer */
      FUNC0(zIn, nIn, zOut, pnOut);
      return;
    }
  }
  FUNC6(&zReverse[sizeof(zReverse)-5], 0, 5);
  z = &zReverse[j+1];


  /* Step 1a */
  if( z[0]=='s' ){
    if(
     !FUNC8(&z, "sess", "ss", 0) &&
     !FUNC8(&z, "sei", "i", 0)  &&
     !FUNC8(&z, "ss", "ss", 0)
    ){
      z++;
    }
  }

  /* Step 1b */  
  z2 = z;
  if( FUNC8(&z, "dee", "ee", m_gt_0) ){
    /* Do nothing.  The work was all in the test */
  }else if( 
     (FUNC8(&z, "gni", "", hasVowel) || FUNC8(&z, "de", "", hasVowel))
      && z!=z2
  ){
     if( FUNC8(&z, "ta", "ate", 0) ||
         FUNC8(&z, "lb", "ble", 0) ||
         FUNC8(&z, "zi", "ize", 0) ){
       /* Do nothing.  The work was all in the test */
     }else if( FUNC1(z) && (*z!='l' && *z!='s' && *z!='z') ){
       z++;
     }else if( FUNC3(z) && FUNC7(z) ){
       *(--z) = 'e';
     }
  }

  /* Step 1c */
  if( z[0]=='y' && FUNC2(z+1) ){
    z[0] = 'i';
  }

  /* Step 2 */
  switch( z[1] ){
   case 'a':
     FUNC8(&z, "lanoita", "ate", m_gt_0) ||
     FUNC8(&z, "lanoit", "tion", m_gt_0);
     break;
   case 'c':
     FUNC8(&z, "icne", "ence", m_gt_0) ||
     FUNC8(&z, "icna", "ance", m_gt_0);
     break;
   case 'e':
     FUNC8(&z, "rezi", "ize", m_gt_0);
     break;
   case 'g':
     FUNC8(&z, "igol", "log", m_gt_0);
     break;
   case 'l':
     FUNC8(&z, "ilb", "ble", m_gt_0) ||
     FUNC8(&z, "illa", "al", m_gt_0) ||
     FUNC8(&z, "iltne", "ent", m_gt_0) ||
     FUNC8(&z, "ile", "e", m_gt_0) ||
     FUNC8(&z, "ilsuo", "ous", m_gt_0);
     break;
   case 'o':
     FUNC8(&z, "noitazi", "ize", m_gt_0) ||
     FUNC8(&z, "noita", "ate", m_gt_0) ||
     FUNC8(&z, "rota", "ate", m_gt_0);
     break;
   case 's':
     FUNC8(&z, "msila", "al", m_gt_0) ||
     FUNC8(&z, "ssenevi", "ive", m_gt_0) ||
     FUNC8(&z, "ssenluf", "ful", m_gt_0) ||
     FUNC8(&z, "ssensuo", "ous", m_gt_0);
     break;
   case 't':
     FUNC8(&z, "itila", "al", m_gt_0) ||
     FUNC8(&z, "itivi", "ive", m_gt_0) ||
     FUNC8(&z, "itilib", "ble", m_gt_0);
     break;
  }

  /* Step 3 */
  switch( z[0] ){
   case 'e':
     FUNC8(&z, "etaci", "ic", m_gt_0) ||
     FUNC8(&z, "evita", "", m_gt_0)   ||
     FUNC8(&z, "ezila", "al", m_gt_0);
     break;
   case 'i':
     FUNC8(&z, "itici", "ic", m_gt_0);
     break;
   case 'l':
     FUNC8(&z, "laci", "ic", m_gt_0) ||
     FUNC8(&z, "luf", "", m_gt_0);
     break;
   case 's':
     FUNC8(&z, "ssen", "", m_gt_0);
     break;
  }

  /* Step 4 */
  switch( z[1] ){
   case 'a':
     if( z[0]=='l' && FUNC5(z+2) ){
       z += 2;
     }
     break;
   case 'c':
     if( z[0]=='e' && z[2]=='n' && (z[3]=='a' || z[3]=='e')  && FUNC5(z+4)  ){
       z += 4;
     }
     break;
   case 'e':
     if( z[0]=='r' && FUNC5(z+2) ){
       z += 2;
     }
     break;
   case 'i':
     if( z[0]=='c' && FUNC5(z+2) ){
       z += 2;
     }
     break;
   case 'l':
     if( z[0]=='e' && z[2]=='b' && (z[3]=='a' || z[3]=='i') && FUNC5(z+4) ){
       z += 4;
     }
     break;
   case 'n':
     if( z[0]=='t' ){
       if( z[2]=='a' ){
         if( FUNC5(z+3) ){
           z += 3;
         }
       }else if( z[2]=='e' ){
         FUNC8(&z, "tneme", "", m_gt_1) ||
         FUNC8(&z, "tnem", "", m_gt_1) ||
         FUNC8(&z, "tne", "", m_gt_1);
       }
     }
     break;
   case 'o':
     if( z[0]=='u' ){
       if( FUNC5(z+2) ){
         z += 2;
       }
     }else if( z[3]=='s' || z[3]=='t' ){
       FUNC8(&z, "noi", "", m_gt_1);
     }
     break;
   case 's':
     if( z[0]=='m' && z[2]=='i' && FUNC5(z+3) ){
       z += 3;
     }
     break;
   case 't':
     FUNC8(&z, "eta", "", m_gt_1) ||
     FUNC8(&z, "iti", "", m_gt_1);
     break;
   case 'u':
     if( z[0]=='s' && z[2]=='o' && FUNC5(z+3) ){
       z += 3;
     }
     break;
   case 'v':
   case 'z':
     if( z[0]=='e' && z[2]=='i' && FUNC5(z+3) ){
       z += 3;
     }
     break;
  }

  /* Step 5a */
  if( z[0]=='e' ){
    if( FUNC5(z+1) ){
      z++;
    }else if( FUNC3(z+1) && !FUNC7(z+1) ){
      z++;
    }
  }

  /* Step 5b */
  if( FUNC5(z) && z[0]=='l' && z[1]=='l' ){
    z++;
  }

  /* z[] is now the stemmed word in reverse order.  Flip it back
  ** around into forward order and return.
  */
  *pnOut = i = FUNC9(z);
  zOut[i] = 0;
  while( *z ){
    zOut[--i] = *(z++);
  }
}