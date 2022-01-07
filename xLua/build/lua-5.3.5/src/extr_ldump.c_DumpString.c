
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int TString ;
typedef int DumpState ;


 int DumpByte (int,int *) ;
 int DumpVar (size_t,int *) ;
 int DumpVector (char const*,size_t,int *) ;
 int cast_int (size_t) ;
 char* getstr (int const*) ;
 int tsslen (int const*) ;

__attribute__((used)) static void DumpString (const TString *s, DumpState *D) {
  if (s == ((void*)0))
    DumpByte(0, D);
  else {



    size_t size = tsslen(s) + 1;

    const char *str = getstr(s);
    if (size < 0xFF)
      DumpByte(cast_int(size), D);
    else {
      DumpByte(0xFF, D);
      DumpVar(size, D);
    }
    DumpVector(str, size - 1, D);
  }
}
