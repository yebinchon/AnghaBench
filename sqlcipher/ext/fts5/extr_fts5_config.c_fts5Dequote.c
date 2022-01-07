
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALWAYS (char) ;
 int assert (int) ;

__attribute__((used)) static int fts5Dequote(char *z){
  char q;
  int iIn = 1;
  int iOut = 0;
  q = z[0];


  assert( q=='[' || q=='\'' || q=='"' || q=='`' );
  if( q=='[' ) q = ']';

  while( ALWAYS(z[iIn]) ){
    if( z[iIn]==q ){
      if( z[iIn+1]!=q ){

        iIn++;
        break;
      }else{



        iIn += 2;
        z[iOut++] = q;
      }
    }else{
      z[iOut++] = z[iIn++];
    }
  }

  z[iOut] = '\0';
  return iIn;
}
