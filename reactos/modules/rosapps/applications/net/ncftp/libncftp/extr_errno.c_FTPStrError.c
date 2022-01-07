
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** gErrList ;
 int kErrFirst ;
 int kErrGeneric ;
 int kErrLast ;
 int kNoErr ;

const char *
FTPStrError(int e)
{
 if (e == kErrGeneric) {
  return ("miscellaneous error");
 } else if (e == kNoErr) {
  return ("no error");
 } else {
  if (e < 0)
   e = -e;
  if ((e >= kErrFirst) && (e <= kErrLast)) {
   return (gErrList[e - kErrFirst]);
  }
 }
 return ("unrecognized error number");
}
