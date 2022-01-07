
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IdChar (unsigned char const) ;
 int TK_BITAND ;
 int TK_BITNOT ;
 int TK_BITOR ;
 int TK_BLOB ;
 int TK_COMMA ;
 int TK_CONCAT ;
 int TK_DOT ;
 int TK_EQ ;
 int TK_FLOAT ;
 int TK_GE ;
 int TK_GT ;
 int TK_ID ;
 int TK_ILLEGAL ;
 int TK_INTEGER ;
 int TK_LE ;
 int TK_LP ;
 int TK_LSHIFT ;
 int TK_LT ;
 int TK_MINUS ;
 int TK_NE ;
 int TK_PLUS ;
 int TK_REM ;
 int TK_RP ;
 int TK_RSHIFT ;
 int TK_SEMI ;
 int TK_SLASH ;
 int TK_SPACE ;
 int TK_STAR ;
 int TK_STRING ;
 int TK_VARIABLE ;
 int* aiClass ;
 int sqlite3Isdigit (unsigned char const) ;
 int sqlite3Isspace (unsigned char const) ;
 int sqlite3Isxdigit (unsigned char const) ;
 int testcase (int) ;

__attribute__((used)) static int sqlite3GetToken(const unsigned char *z, int *tokenType){
  int i, c;
  switch( aiClass[*z] ){


    case 133: {
      for(i=1; sqlite3Isspace(z[i]); i++){}
      *tokenType = TK_SPACE;
      return i;
    }
    case 142: {
      if( z[1]=='-' ){
        for(i=2; (c=z[i])!=0 && c!='\n'; i++){}
        *tokenType = TK_SPACE;
        return i;
      }
      *tokenType = TK_MINUS;
      return 1;
    }
    case 144: {
      *tokenType = TK_LP;
      return 1;
    }
    case 136: {
      *tokenType = TK_RP;
      return 1;
    }
    case 135: {
      *tokenType = TK_SEMI;
      return 1;
    }
    case 139: {
      *tokenType = TK_PLUS;
      return 1;
    }
    case 132: {
      *tokenType = TK_STAR;
      return 1;
    }
    case 134: {
      if( z[1]!='*' || z[2]==0 ){
        *tokenType = TK_SLASH;
        return 1;
      }
      for(i=3, c=z[2]; (c!='*' || z[i]!='/') && (c=z[i])!=0; i++){}
      if( c ) i++;
      *tokenType = TK_SPACE;
      return i;
    }
    case 141: {
      *tokenType = TK_REM;
      return 1;
    }
    case 148: {
      *tokenType = TK_EQ;
      return 1 + (z[1]=='=');
    }
    case 143: {
      if( (c=z[1])=='=' ){
        *tokenType = TK_LE;
        return 2;
      }else if( c=='>' ){
        *tokenType = TK_NE;
        return 2;
      }else if( c=='<' ){
        *tokenType = TK_LSHIFT;
        return 2;
      }else{
        *tokenType = TK_LT;
        return 1;
      }
    }
    case 147: {
      if( (c=z[1])=='=' ){
        *tokenType = TK_GE;
        return 2;
      }else if( c=='>' ){
        *tokenType = TK_RSHIFT;
        return 2;
      }else{
        *tokenType = TK_GT;
        return 1;
      }
    }
    case 153: {
      if( z[1]!='=' ){
        *tokenType = TK_ILLEGAL;
        return 1;
      }else{
        *tokenType = TK_NE;
        return 2;
      }
    }
    case 140: {
      if( z[1]!='|' ){
        *tokenType = TK_BITOR;
        return 1;
      }else{
        *tokenType = TK_CONCAT;
        return 2;
      }
    }
    case 152: {
      *tokenType = TK_COMMA;
      return 1;
    }
    case 154: {
      *tokenType = TK_BITAND;
      return 1;
    }
    case 131: {
      *tokenType = TK_BITNOT;
      return 1;
    }
    case 138: {
      int delim = z[0];
      testcase( delim=='`' );
      testcase( delim=='\'' );
      testcase( delim=='"' );
      for(i=1; (c=z[i])!=0; i++){
        if( c==delim ){
          if( z[i+1]==delim ){
            i++;
          }else{
            break;
          }
        }
      }
      if( c=='\'' ){
        *tokenType = TK_STRING;
        return i+1;
      }else if( c!=0 ){
        *tokenType = TK_ID;
        return i+1;
      }else{
        *tokenType = TK_ILLEGAL;
        return i;
      }
    }
    case 149: {
      if( !sqlite3Isdigit(z[1]) ){
        *tokenType = TK_DOT;
        return 1;
      }


    }
    case 151: {
      *tokenType = TK_INTEGER;
      if( z[0]=='0' && (z[1]=='x' || z[1]=='X') && sqlite3Isxdigit(z[2]) ){
        for(i=3; sqlite3Isxdigit(z[i]); i++){}
        return i;
      }
      for(i=0; sqlite3Isdigit(z[i]); i++){}
      if( z[i]=='.' ){
        i++;
        while( sqlite3Isdigit(z[i]) ){ i++; }
        *tokenType = TK_FLOAT;
      }
      if( (z[i]=='e' || z[i]=='E') &&
           ( sqlite3Isdigit(z[i+1])
            || ((z[i+1]=='+' || z[i+1]=='-') && sqlite3Isdigit(z[i+2]))
           )
      ){
        i += 2;
        while( sqlite3Isdigit(z[i]) ){ i++; }
        *tokenType = TK_FLOAT;
      }
      while( IdChar(z[i]) ){
        *tokenType = TK_ILLEGAL;
        i++;
      }
      return i;
    }
    case 137: {
      for(i=1, c=z[0]; c!=']' && (c=z[i])!=0; i++){}
      *tokenType = c==']' ? TK_ID : TK_ILLEGAL;
      return i;
    }
    case 129: {
      *tokenType = TK_VARIABLE;
      for(i=1; sqlite3Isdigit(z[i]); i++){}
      return i;
    }
    case 150:
    case 130: {
      int n = 0;
      testcase( z[0]=='$' ); testcase( z[0]=='@' );
      testcase( z[0]==':' ); testcase( z[0]=='#' );
      *tokenType = TK_VARIABLE;
      for(i=1; (c=z[i])!=0; i++){
        if( IdChar(c) ){
          n++;
        }else if( c=='(' && n>0 ){
          do{
            i++;
          }while( (c=z[i])!=0 && !sqlite3Isspace(c) && c!=')' );
          if( c==')' ){
            i++;
          }else{
            *tokenType = TK_ILLEGAL;
          }
          break;
        }else if( c==':' && z[i+1]==':' ){
          i++;
        }else{
          break;
        }
      }
      if( n==0 ) *tokenType = TK_ILLEGAL;
      return i;
    }
    case 145: {
      for(i=1; aiClass[z[i]]<=145; i++){}
      if( IdChar(z[i]) ){



        i++;
        break;
      }
      *tokenType = TK_ID;
      return i;
    }
    case 128: {
      testcase( z[0]=='x' ); testcase( z[0]=='X' );
      if( z[1]=='\'' ){
        *tokenType = TK_BLOB;
        for(i=2; sqlite3Isxdigit(z[i]); i++){}
        if( z[i]!='\'' || i%2 ){
          *tokenType = TK_ILLEGAL;
          while( z[i] && z[i]!='\'' ){ i++; }
        }
        if( z[i] ) i++;
        return i;
      }


    }
    case 146: {
      i = 1;
      break;
    }
    default: {
      *tokenType = TK_ILLEGAL;
      return 1;
    }
  }
  while( IdChar(z[i]) ){ i++; }
  *tokenType = TK_ID;
  return i;
}
