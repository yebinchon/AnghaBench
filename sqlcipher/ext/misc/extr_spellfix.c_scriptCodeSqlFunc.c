
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ CCLASS_DIGIT ;





 scalar_t__* midClass ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int utf8Read (unsigned char const*,int,int*) ;

__attribute__((used)) static void scriptCodeSqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn = sqlite3_value_text(argv[0]);
  int nIn = sqlite3_value_bytes(argv[0]);
  int c, sz;
  int scriptMask = 0;
  int res;
  int seenDigit = 0;






  while( nIn>0 ){
    c = utf8Read(zIn, nIn, &sz);
    zIn += sz;
    nIn -= sz;
    if( c<0x02af ){
      if( c>=0x80 || midClass[c&0x7f]<CCLASS_DIGIT ){
        scriptMask |= 0x0001;
      }else if( c>='0' && c<='9' ){
        seenDigit = 1;
      }
    }else if( c>=0x0400 && c<=0x04ff ){
      scriptMask |= 0x0002;
    }else if( c>=0x0386 && c<=0x03ce ){
      scriptMask |= 0x0004;
    }else if( c>=0x0590 && c<=0x05ff ){
      scriptMask |= 0x0008;
    }else if( c>=0x0600 && c<=0x06ff ){
      scriptMask |= 0x0010;
    }
  }
  if( scriptMask==0 && seenDigit ) scriptMask = 0x0001;
  switch( scriptMask ){
    case 0: res = 999; break;
    case 0x0001: res = 215; break;
    case 0x0002: res = 220; break;
    case 0x0004: res = 200; break;
    case 0x0008: res = 125; break;
    case 0x0010: res = 160; break;
    default: res = 998; break;
  }
  sqlite3_result_int(context, res);
}
