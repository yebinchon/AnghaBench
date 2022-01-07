
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int LARGEST_INT64 ;
 scalar_t__ totypeIsdigit (char const) ;
 scalar_t__ totypeIsspace (char const) ;

__attribute__((used)) static int totypeAtoF(const char *z, double *pResult, int length){
  const char *zEnd = z + length;

  int sign = 1;
  sqlite3_int64 s = 0;
  int d = 0;
  int esign = 1;
  int e = 0;
  int eValid = 1;
  double result;
  int nDigits = 0;
  int nonNum = 0;

  *pResult = 0.0;


  while( z<zEnd && totypeIsspace(*z) ) z++;
  if( z>=zEnd ) return 0;


  if( *z=='-' ){
    sign = -1;
    z++;
  }else if( *z=='+' ){
    z++;
  }


  while( z<zEnd && z[0]=='0' ) z++, nDigits++;


  while( z<zEnd && totypeIsdigit(*z) && s<((LARGEST_INT64-9)/10) ){
    s = s*10 + (*z - '0');
    z++, nDigits++;
  }



  while( z<zEnd && totypeIsdigit(*z) ) z++, nDigits++, d++;
  if( z>=zEnd ) goto totype_atof_calc;


  if( *z=='.' ){
    z++;


    while( z<zEnd && totypeIsdigit(*z) && s<((LARGEST_INT64-9)/10) ){
      s = s*10 + (*z - '0');
      z++, nDigits++, d--;
    }

    while( z<zEnd && totypeIsdigit(*z) ) z++, nDigits++;
  }
  if( z>=zEnd ) goto totype_atof_calc;


  if( *z=='e' || *z=='E' ){
    z++;
    eValid = 0;
    if( z>=zEnd ) goto totype_atof_calc;

    if( *z=='-' ){
      esign = -1;
      z++;
    }else if( *z=='+' ){
      z++;
    }

    while( z<zEnd && totypeIsdigit(*z) ){
      e = e<10000 ? (e*10 + (*z - '0')) : 10000;
      z++;
      eValid = 1;
    }
  }


  if( nDigits && eValid ){
    while( z<zEnd && totypeIsspace(*z) ) z++;
  }

totype_atof_calc:

  e = (e*esign) + d;
  if( e<0 ) {
    esign = -1;
    e *= -1;
  } else {
    esign = 1;
  }


  if( !s ) {


    result = (sign<0 && nDigits) ? -(double)0 : (double)0;
  } else {

    if( esign>0 ){
      while( s<(LARGEST_INT64/10) && e>0 ) e--,s*=10;
    }else{
      while( !(s%10) && e>0 ) e--,s/=10;
    }


    s = sign<0 ? -s : s;



    if( e ){
      double scale = 1.0;

      if( e>307 && e<342 ){
        while( e%308 ) { scale *= 1.0e+1; e -= 1; }
        if( esign<0 ){
          result = s / scale;
          result /= 1.0e+308;
        }else{
          result = s * scale;
          result *= 1.0e+308;
        }
      }else if( e>=342 ){
        if( esign<0 ){
          result = 0.0*s;
        }else{
          result = 1e308*1e308*s;
        }
      }else{


        while( e%22 ) { scale *= 1.0e+1; e -= 1; }
        while( e>0 ) { scale *= 1.0e+22; e -= 22; }
        if( esign<0 ){
          result = s / scale;
        }else{
          result = s * scale;
        }
      }
    } else {
      result = (double)s;
    }
  }


  *pResult = result;


  return z>=zEnd && nDigits>0 && eValid && nonNum==0;
}
