
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int jit_State ;
typedef int TRef ;
typedef int GCstr ;


 int IR (int ) ;
 int J2G (int *) ;
 scalar_t__ MM_FAST ;
 int * ir_kstr (int ) ;
 int * mmname_str (int ,scalar_t__) ;
 scalar_t__ tref_isk (int ) ;
 scalar_t__ tref_isstr (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static int nommstr(jit_State *J, TRef key)
{
  if (tref_isstr(key)) {
    if (tref_isk(key)) {
      GCstr *str = ir_kstr(IR(tref_ref(key)));
      uint32_t mm;
      for (mm = 0; mm <= MM_FAST; mm++)
 if (mmname_str(J2G(J), mm) == str)
   return 0;
    } else {
      return 0;
    }
  }
  return 1;
}
