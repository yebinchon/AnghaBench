
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALWAYS (char) ;

__attribute__((used)) static void unionDequote(char *z){
  if( z ){
    char q = z[0];


    if( q=='[' || q=='\'' || q=='"' || q=='`' ){
      int iIn = 1;
      int iOut = 0;
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
    }
  }
}
