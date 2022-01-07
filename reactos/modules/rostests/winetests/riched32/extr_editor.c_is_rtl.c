
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* lsUsb; } ;
typedef int LPSTR ;
typedef TYPE_1__ LOCALESIGNATURE ;
typedef int BOOL ;


 scalar_t__ GetLocaleInfoA (int ,int ,int ,int) ;
 int LOCALE_FONTSIGNATURE ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static BOOL is_rtl(void) {
  LOCALESIGNATURE sig;

  return (GetLocaleInfoA(LOCALE_USER_DEFAULT, LOCALE_FONTSIGNATURE,
                         (LPSTR) &sig, sizeof(LOCALESIGNATURE)) &&
          (sig.lsUsb[3] & 0x08000000) != 0);
}
