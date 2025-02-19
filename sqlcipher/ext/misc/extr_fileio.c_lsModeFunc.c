
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void lsModeFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;
  int iMode = sqlite3_value_int(argv[0]);
  char z[16];
  (void)argc;
  if( S_ISLNK(iMode) ){
    z[0] = 'l';
  }else if( S_ISREG(iMode) ){
    z[0] = '-';
  }else if( S_ISDIR(iMode) ){
    z[0] = 'd';
  }else{
    z[0] = '?';
  }
  for(i=0; i<3; i++){
    int m = (iMode >> ((2-i)*3));
    char *a = &z[1 + i*3];
    a[0] = (m & 0x4) ? 'r' : '-';
    a[1] = (m & 0x2) ? 'w' : '-';
    a[2] = (m & 0x1) ? 'x' : '-';
  }
  z[10] = '\0';
  sqlite3_result_text(context, z, -1, SQLITE_TRANSIENT);
}
