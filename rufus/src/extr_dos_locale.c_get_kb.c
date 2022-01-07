
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetKeyboardLayoutNameA (char*) ;
 unsigned int GetSystemDefaultLangID () ;
 int KL_NAMELENGTH ;
 unsigned int PRIMARYLANGID (unsigned int) ;
 scalar_t__ sscanf (char*,char*,unsigned int*) ;
 int uprintf (char*,...) ;

__attribute__((used)) static const char* get_kb(void)
{
 unsigned int kbid;
 char kbid_str[KL_NAMELENGTH];
 int pass;






 GetKeyboardLayoutNameA(kbid_str);
 if (sscanf(kbid_str, "%x", &kbid) == 0) {
  uprintf("Could not scan keyboard layout name - falling back to US as default\n");
  kbid = 0x00000409;
 }
 uprintf("Windows KBID 0x%08x\n", kbid);

 for (pass=0; pass<3; pass++) {
  switch(kbid) {
  case 0x00000001:
  case 0x00010401:
  case 0x00020401:
   return "ar";
  case 0x00000002:
  case 0x00000402:
  case 0x00010402:
  case 0x00020402:
  case 0x00030402:
  case 0x00040402:
   return "bg";
  case 0x00000004:
  case 0x00000404:
  case 0x00000804:
  case 0x00000c04:
  case 0x00001004:
  case 0x00001404:
   return "ch";
  case 0x00000005:
  case 0x00000405:
  case 0x00010405:
  case 0x00020405:
   return "cz";
  case 0x00000006:
  case 0x00000406:
   return "dk";
  case 0x00000007:
  case 0x00000407:
  case 0x00010407:
   return "gr";
  case 0x00000807:
   return "sg";
  case 0x00000008:
  case 0x00000408:
  case 0x00010408:
  case 0x00020408:
  case 0x00030408:
  case 0x00040408:
  case 0x00050408:
  case 0x00060408:
   return "gk";
  case 0x00000009:
  case 0x00000409:
  case 0x00020409:
  case 0x00050409:
   return "us";
  case 0x00000809:
  case 0x00000452:
  case 0x00001809:
  case 0x00011809:
   return "uk";
  case 0x00000c0c:
  case 0x00001009:
  case 0x00011009:
   return "cf";
  case 0x00010409:
   return "dv";
  case 0x00030409:
   return "lh";
  case 0x00040409:
   return "rh";
  case 0x0000000a:
  case 0x0000040a:
  case 0x0001040a:
   return "sp";
  case 0x0000080a:
   return "la";
  case 0x0000000b:
  case 0x0000040b:
  case 0x0001083b:
   return "su";
  case 0x0000000c:
  case 0x0000040c:
  case 0x0000046e:
   return "fr";
  case 0x0000080c:
  case 0x0001080c:
   return "be";
  case 0x0000100c:
   return "sf";
  case 0x0000000d:
  case 0x0000040d:
   return "il";
  case 0x0000000e:
  case 0x0000040e:
  case 0x0001040e:
   return "hu";
  case 0x0000000f:
  case 0x0000040f:
   return "is";
  case 0x00000010:
  case 0x00000410:
  case 0x00010410:
   return "it";
  case 0x00000011:
  case 0x00000411:
   return "jp";



  case 0x00000013:
  case 0x00000413:
  case 0x00000813:
   return "nl";
  case 0x00000014:
  case 0x00000414:
  case 0x0000043b:
  case 0x0001043b:
   return "no";
  case 0x00000015:
  case 0x00010415:
  case 0x00000415:
   return "pl";
  case 0x00000016:
  case 0x00000416:
  case 0x00010416:
   return "br";
  case 0x00000816:
   return "po";
  case 0x00000018:
  case 0x00000418:
  case 0x00010418:
  case 0x00020418:
   return "ro";
  case 0x00000019:
  case 0x00000419:
  case 0x00010419:
   return "ru";
  case 0x0000001a:
  case 0x0000041a:
  case 0x0000081a:
  case 0x00000024:
  case 0x00000424:
   return "yu";
  case 0x00000c1a:
  case 0x0000201a:
   return "yc";
  case 0x0000001b:
  case 0x0000041b:
  case 0x0001041b:
   return "sl";
  case 0x0000001c:
  case 0x0000041c:
   return "sq";
  case 0x0000001d:
  case 0x0000041d:
  case 0x0000083b:
   return "sv";
  case 0x0000001f:
  case 0x0000041f:
  case 0x0001041f:
   return "tr";
  case 0x00000022:
  case 0x00000422:
  case 0x00020422:
   return "ur";
  case 0x00000023:
  case 0x00000423:
   return "bl";
  case 0x00000025:
  case 0x00000425:
   return "et";
  case 0x00000026:
  case 0x00000426:
  case 0x00010426:
   return "lv";
  case 0x00000027:
  case 0x00000427:
  case 0x00010427:
  case 0x00020427:
   return "lt";
  case 0x00000028:
  case 0x00000428:
   return "tj";



  case 0x0000002a:
  case 0x0000042a:
   return "vi";
  case 0x0000002b:
  case 0x0000042b:
  case 0x0001042b:
   return "hy";
  case 0x0000002c:
  case 0x0000042c:
  case 0x0000082c:
   return "az";
  case 0x0000002f:
  case 0x0000042f:
  case 0x0001042f:
   return "mk";
  case 0x00000037:
  case 0x00000437:
  case 0x00010437:
  case 0x00020437:
   return "ka";
  case 0x00000038:
  case 0x00000438:
   return "fo";
  case 0x0000003a:
  case 0x0000043a:
  case 0x0001043a:
   return "mt";
  case 0x0000003f:
  case 0x0000043f:
   return "kk";
  case 0x00000040:
  case 0x00000440:
   return "ky";
  case 0x00000043:
  case 0x00000843:
   return "uz";
  case 0x00000042:
  case 0x00000442:
   return "tm";
  case 0x00000044:
  case 0x00000444:
   return "tt";
  default:
   if (pass == 0) {


    kbid = PRIMARYLANGID(kbid);
   } else if (pass == 1) {

    kbid = PRIMARYLANGID(GetSystemDefaultLangID());
    uprintf("Unable to match KBID, trying LangID 0x%04x\n", kbid);
   }
   break;
  }
 }
 uprintf("Unable to match KBID and LangID - defaulting to US\n");
 return "us";
}
