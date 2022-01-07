
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int i64 ;
typedef int LONGDOUBLE_TYPE ;


 int INFINITY ;
 int LARGEST_INT64 ;
 int SQLITE_UTF16BE ;
 int SQLITE_UTF16LE ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3Atoi64 (char const*,double*,int,int) ;
 scalar_t__ sqlite3Isdigit (char const) ;
 scalar_t__ sqlite3Isspace (char const) ;
 int sqlite3Pow10 (int) ;

int sqlite3AtoF(const char *z, double *pResult, int length, u8 enc){

  int incr;
  const char *zEnd = z + length;

  int sign = 1;
  i64 s = 0;
  int d = 0;
  int esign = 1;
  int e = 0;
  int eValid = 1;
  double result;
  int nDigits = 0;
  int nonNum = 0;

  assert( enc==SQLITE_UTF8 || enc==SQLITE_UTF16LE || enc==SQLITE_UTF16BE );
  *pResult = 0.0;

  if( enc==SQLITE_UTF8 ){
    incr = 1;
  }else{
    int i;
    incr = 2;
    assert( SQLITE_UTF16LE==2 && SQLITE_UTF16BE==3 );
    for(i=3-enc; i<length && z[i]==0; i+=2){}
    nonNum = i<length;
    zEnd = &z[i^1];
    z += (enc&1);
  }


  while( z<zEnd && sqlite3Isspace(*z) ) z+=incr;
  if( z>=zEnd ) return 0;


  if( *z=='-' ){
    sign = -1;
    z+=incr;
  }else if( *z=='+' ){
    z+=incr;
  }


  while( z<zEnd && sqlite3Isdigit(*z) && s<((LARGEST_INT64-9)/10) ){
    s = s*10 + (*z - '0');
    z+=incr; nDigits++;
  }



  while( z<zEnd && sqlite3Isdigit(*z) ){ z+=incr; nDigits++; d++; }
  if( z>=zEnd ) goto do_atof_calc;


  if( *z=='.' ){
    z+=incr;


    while( z<zEnd && sqlite3Isdigit(*z) ){
      if( s<((LARGEST_INT64-9)/10) ){
        s = s*10 + (*z - '0');
        d--;
      }
      z+=incr; nDigits++;
    }
  }
  if( z>=zEnd ) goto do_atof_calc;


  if( *z=='e' || *z=='E' ){
    z+=incr;
    eValid = 0;




    if( z>=zEnd ) goto do_atof_calc;


    if( *z=='-' ){
      esign = -1;
      z+=incr;
    }else if( *z=='+' ){
      z+=incr;
    }

    while( z<zEnd && sqlite3Isdigit(*z) ){
      e = e<10000 ? (e*10 + (*z - '0')) : 10000;
      z+=incr;
      eValid = 1;
    }
  }


  while( z<zEnd && sqlite3Isspace(*z) ) z+=incr;

do_atof_calc:

  e = (e*esign) + d;
  if( e<0 ) {
    esign = -1;
    e *= -1;
  } else {
    esign = 1;
  }

  if( s==0 ) {

    result = sign<0 ? -(double)0 : (double)0;
  } else {






    while( e>0 ){
      if( esign>0 ){
        if( s>=(LARGEST_INT64/10) ) break;
        s *= 10;
      }else{
        if( s%10!=0 ) break;
        s /= 10;
      }
      e--;
    }


    s = sign<0 ? -s : s;

    if( e==0 ){
      result = (double)s;
    }else{

      if( e>307 ){
        if( e<342 ){
          LONGDOUBLE_TYPE scale = sqlite3Pow10(e-308);
          if( esign<0 ){
            result = s / scale;
            result /= 1.0e+308;
          }else{
            result = s * scale;
            result *= 1.0e+308;
          }
        }else{ assert( e>=342 );
          if( esign<0 ){
            result = 0.0*s;
          }else{



            result = 1e308*1e308*s;

          }
        }
      }else{
        LONGDOUBLE_TYPE scale = sqlite3Pow10(e);
        if( esign<0 ){
          result = s / scale;
        }else{
          result = s * scale;
        }
      }
    }
  }


  *pResult = result;


  return z==zEnd && nDigits>0 && eValid && nonNum==0;



}
