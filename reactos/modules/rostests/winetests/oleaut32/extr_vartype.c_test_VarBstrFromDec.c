
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCID ;


 int BSTR_DEC (int,int,int,int,char*,int ) ;
 int BSTR_DEC64 (int,int ,int,int,int,char*,int ) ;
 int LANG_ENGLISH ;
 int LANG_SPANISH ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_ENGLISH_US ;

__attribute__((used)) static void test_VarBstrFromDec(void)
{



  LCID en_us, sp;

  en_us = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);
  sp = MAKELCID(MAKELANGID(LANG_SPANISH, SUBLANG_DEFAULT), SORT_DEFAULT);

  _BSTR_DEC(0, 0, 0, 0, 0, "0", en_us, 36);

  _BSTR_DEC(0, 0, 0, 0, 1, "1", en_us, 38);
  _BSTR_DEC(1, 0, 0, 0, 10, "1", en_us, 39);
  _BSTR_DEC(2, 0, 0, 0, 100, "1", en_us, 40);
  _BSTR_DEC(3, 0, 0, 0, 1000, "1", en_us, 41);

  _BSTR_DEC(1, 0, 0, 0, 15, "1.5", en_us, 43);
  _BSTR_DEC(2, 0, 0, 0, 150, "1.5", en_us, 44);
  _BSTR_DEC(3, 0, 0, 0, 1500, "1.5", en_us, 45);

  _BSTR_DEC(1, 0x80, 0, 0, 15, "-1.5", en_us, 47);


  _BSTR_DEC(0, 0, 0, 0, 0xffffffff, "4294967295", en_us, 50);

  _BSTR_DEC(0, 0, 0, 1, 0, "4294967296", en_us, 52);

  _BSTR_DEC(0, 0, 0, 0xffffffff, 0xffffffff, "18446744073709551615", en_us, 54);

  _BSTR_DEC(0, 0, 1, 0, 0, "18446744073709551616", en_us, 56);

  _BSTR_DEC(0, 0, 0xffffffff, 0xffffffff, 0xffffffff, "79228162514264337593543950335", en_us, 58);

  _BSTR_DEC(10, 0, 0, 0, 1, "0.0000000001", en_us, 60);

  _BSTR_DEC(10, 0, 0xffffffffUL, 0xffffffff, 0xffffffff, "7922816251426433759.3543950335", en_us, 62);

  _BSTR_DEC(28, 0, 0xffffffffUL, 0xffffffff, 0xffffffff, "7.9228162514264337593543950335", en_us, 64);


  _BSTR_DEC(4, 0, 0, 0, 9, "0.0009", en_us, 67);
  _BSTR_DEC(5, 0, 0, 0, 90, "0.0009", en_us, 68);
  _BSTR_DEC(6, 0, 0, 0, 900, "0.0009", en_us, 69);
  _BSTR_DEC(7, 0, 0, 0, 9000, "0.0009", en_us, 70);


  _BSTR_DEC(4, 0, 0, 0, 9, "0,0009", sp, 73);
  _BSTR_DEC(5, 0, 0, 0, 90, "0,0009", sp, 74);
  _BSTR_DEC(6, 0, 0, 0, 900, "0,0009", sp, 75);
  _BSTR_DEC(7, 0, 0, 0, 9000, "0,0009", sp, 76);



}
