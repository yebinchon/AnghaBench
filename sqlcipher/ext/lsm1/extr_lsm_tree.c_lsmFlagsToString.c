
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSM_END_DELETE ;



 int LSM_START_DELETE ;
 int LSM_SYSTEMKEY ;

void lsmFlagsToString(int flags, char *zFlags){

  zFlags[0] = (flags & LSM_END_DELETE) ? ']' : '.';



  switch( flags & (129|130|128) ){
    case 0: zFlags[1] = '.'; break;
    case 129: zFlags[1] = '-'; break;
    case 130: zFlags[1] = '+'; break;
    case 128: zFlags[1] = '^'; break;
    default: zFlags[1] = '?'; break;
  }

  zFlags[2] = (flags & LSM_SYSTEMKEY) ? '*' : '.';
  zFlags[3] = (flags & LSM_START_DELETE) ? '[' : '.';
  zFlags[4] = '\0';
}
