
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zReverse ;


 int copy_stemmer (char const*,int,char*,int*) ;
 scalar_t__ doubleConsonant (char*) ;
 scalar_t__ hasVowel (char*) ;
 scalar_t__ m_eq_1 (char*) ;
 scalar_t__ m_gt_0 (char*) ;
 scalar_t__ m_gt_1 (char*) ;
 int memset (char*,int ,int) ;
 scalar_t__ star_oh (char*) ;
 scalar_t__ stem (char**,char*,char*,scalar_t__ (*) (char*)) ;
 int strlen (char*) ;

__attribute__((used)) static void porter_stemmer(const char *zIn, int nIn, char *zOut, int *pnOut){
  int i, j, c;
  char zReverse[28];
  char *z, *z2;
  if( nIn<3 || nIn>=sizeof(zReverse)-7 ){


    copy_stemmer(zIn, nIn, zOut, pnOut);
    return;
  }
  for(i=0, j=sizeof(zReverse)-6; i<nIn; i++, j--){
    c = zIn[i];
    if( c>='A' && c<='Z' ){
      zReverse[j] = c + 'a' - 'A';
    }else if( c>='a' && c<='z' ){
      zReverse[j] = c;
    }else{


      copy_stemmer(zIn, nIn, zOut, pnOut);
      return;
    }
  }
  memset(&zReverse[sizeof(zReverse)-5], 0, 5);
  z = &zReverse[j+1];



  if( z[0]=='s' ){
    if(
     !stem(&z, "sess", "ss", 0) &&
     !stem(&z, "sei", "i", 0) &&
     !stem(&z, "ss", "ss", 0)
    ){
      z++;
    }
  }


  z2 = z;
  if( stem(&z, "dee", "ee", m_gt_0) ){

  }else if(
     (stem(&z, "gni", "", hasVowel) || stem(&z, "de", "", hasVowel))
      && z!=z2
  ){
     if( stem(&z, "ta", "ate", 0) ||
         stem(&z, "lb", "ble", 0) ||
         stem(&z, "zi", "ize", 0) ){

     }else if( doubleConsonant(z) && (*z!='l' && *z!='s' && *z!='z') ){
       z++;
     }else if( m_eq_1(z) && star_oh(z) ){
       *(--z) = 'e';
     }
  }


  if( z[0]=='y' && hasVowel(z+1) ){
    z[0] = 'i';
  }


  switch( z[1] ){
   case 'a':
     stem(&z, "lanoita", "ate", m_gt_0) ||
     stem(&z, "lanoit", "tion", m_gt_0);
     break;
   case 'c':
     stem(&z, "icne", "ence", m_gt_0) ||
     stem(&z, "icna", "ance", m_gt_0);
     break;
   case 'e':
     stem(&z, "rezi", "ize", m_gt_0);
     break;
   case 'g':
     stem(&z, "igol", "log", m_gt_0);
     break;
   case 'l':
     stem(&z, "ilb", "ble", m_gt_0) ||
     stem(&z, "illa", "al", m_gt_0) ||
     stem(&z, "iltne", "ent", m_gt_0) ||
     stem(&z, "ile", "e", m_gt_0) ||
     stem(&z, "ilsuo", "ous", m_gt_0);
     break;
   case 'o':
     stem(&z, "noitazi", "ize", m_gt_0) ||
     stem(&z, "noita", "ate", m_gt_0) ||
     stem(&z, "rota", "ate", m_gt_0);
     break;
   case 's':
     stem(&z, "msila", "al", m_gt_0) ||
     stem(&z, "ssenevi", "ive", m_gt_0) ||
     stem(&z, "ssenluf", "ful", m_gt_0) ||
     stem(&z, "ssensuo", "ous", m_gt_0);
     break;
   case 't':
     stem(&z, "itila", "al", m_gt_0) ||
     stem(&z, "itivi", "ive", m_gt_0) ||
     stem(&z, "itilib", "ble", m_gt_0);
     break;
  }


  switch( z[0] ){
   case 'e':
     stem(&z, "etaci", "ic", m_gt_0) ||
     stem(&z, "evita", "", m_gt_0) ||
     stem(&z, "ezila", "al", m_gt_0);
     break;
   case 'i':
     stem(&z, "itici", "ic", m_gt_0);
     break;
   case 'l':
     stem(&z, "laci", "ic", m_gt_0) ||
     stem(&z, "luf", "", m_gt_0);
     break;
   case 's':
     stem(&z, "ssen", "", m_gt_0);
     break;
  }


  switch( z[1] ){
   case 'a':
     if( z[0]=='l' && m_gt_1(z+2) ){
       z += 2;
     }
     break;
   case 'c':
     if( z[0]=='e' && z[2]=='n' && (z[3]=='a' || z[3]=='e') && m_gt_1(z+4) ){
       z += 4;
     }
     break;
   case 'e':
     if( z[0]=='r' && m_gt_1(z+2) ){
       z += 2;
     }
     break;
   case 'i':
     if( z[0]=='c' && m_gt_1(z+2) ){
       z += 2;
     }
     break;
   case 'l':
     if( z[0]=='e' && z[2]=='b' && (z[3]=='a' || z[3]=='i') && m_gt_1(z+4) ){
       z += 4;
     }
     break;
   case 'n':
     if( z[0]=='t' ){
       if( z[2]=='a' ){
         if( m_gt_1(z+3) ){
           z += 3;
         }
       }else if( z[2]=='e' ){
         stem(&z, "tneme", "", m_gt_1) ||
         stem(&z, "tnem", "", m_gt_1) ||
         stem(&z, "tne", "", m_gt_1);
       }
     }
     break;
   case 'o':
     if( z[0]=='u' ){
       if( m_gt_1(z+2) ){
         z += 2;
       }
     }else if( z[3]=='s' || z[3]=='t' ){
       stem(&z, "noi", "", m_gt_1);
     }
     break;
   case 's':
     if( z[0]=='m' && z[2]=='i' && m_gt_1(z+3) ){
       z += 3;
     }
     break;
   case 't':
     stem(&z, "eta", "", m_gt_1) ||
     stem(&z, "iti", "", m_gt_1);
     break;
   case 'u':
     if( z[0]=='s' && z[2]=='o' && m_gt_1(z+3) ){
       z += 3;
     }
     break;
   case 'v':
   case 'z':
     if( z[0]=='e' && z[2]=='i' && m_gt_1(z+3) ){
       z += 3;
     }
     break;
  }


  if( z[0]=='e' ){
    if( m_gt_1(z+1) ){
      z++;
    }else if( m_eq_1(z+1) && !star_oh(z+1) ){
      z++;
    }
  }


  if( m_gt_1(z) && z[0]=='l' && z[1]=='l' ){
    z++;
  }




  *pnOut = i = strlen(z);
  zOut[i] = 0;
  while( *z ){
    zOut[--i] = *(z++);
  }
}
