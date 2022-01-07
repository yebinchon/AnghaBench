
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCID ;


 int BSTR_CY (int,int,char*,int ) ;
 int LANG_ENGLISH ;
 int LANG_SPANISH ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_ENGLISH_US ;

__attribute__((used)) static void test_VarBstrFromCy(void)
{


  LCID en_us, sp;

  en_us = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);
  sp = MAKELCID(MAKELANGID(LANG_SPANISH, SUBLANG_DEFAULT), SORT_DEFAULT);

  _BSTR_CY(0, 0, "0", en_us, 34);
  _BSTR_CY(0, 10000, "1", en_us, 35);
  _BSTR_CY(0, 15000, "1.5", en_us, 36);
  _BSTR_CY(0xffffffff, ((15000)^0xffffffff)+1, "-1.5", en_us, 37);

  _BSTR_CY(0, 0xffffffff, "429496.7295", en_us, 39);

  _BSTR_CY(1, 0, "429496.7296", en_us, 41);

  _BSTR_CY(0x7fffffff, 0xffffffff, "922337203685477.5807", en_us, 43);
  _BSTR_CY(0, 9, "0.0009", en_us, 44);
  _BSTR_CY(0, 9, "0,0009", sp, 45);


}
