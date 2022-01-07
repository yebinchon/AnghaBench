
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;



__attribute__((used)) static const char* fd_get_ega(ULONG cp)
{
 switch(cp) {
 case 437:
 case 850:
 case 852:
 case 853:
 case 857:
 case 858:
  return "ega.cpx";
 case 775:
 case 859:
 case 1116:
 case 1117:
 case 1118:
 case 1119:
  return "ega2.cpx";
 case 771:
 case 772:
 case 808:
 case 855:
 case 866:
 case 872:
  return "ega3.cpx";
 case 848:
 case 849:
 case 1125:
 case 1131:
 case 3012:
 case 30010:
  return "ega4.cpx";
 case 113:
 case 737:
 case 851:


 case 869:
  return "ega5.cpx";
 case 899:
 case 30008:
 case 58210:
 case 59829:
 case 60258:
 case 60853:
  return "ega6.cpx";
 case 30011:
 case 30013:
 case 30014:
 case 30017:
 case 30018:
 case 30019:
  return "ega7.cpx";
 case 770:
 case 773:
 case 774:

 case 777:
 case 778:
  return "ega8.cpx";

 case 860:
 case 861:
 case 863:
 case 865:
 case 867:
  return "ega9.cpx";
 case 667:
 case 668:
 case 790:

 case 991:
 case 3845:
  return "ega10.cpx";

 case 30000:
 case 30001:
 case 30004:
 case 30007:
 case 30009:
  return "ega11.cpx";


 case 30003:
 case 30029:
 case 30030:
 case 58335:
  return "ega12";

 case 895:
 case 30002:
 case 58152:
 case 59234:
 case 62306:
  return "ega13.cpx";
 case 30006:
 case 30012:
 case 30015:
 case 30016:
 case 30020:
 case 30021:
  return "ega14.cpx";
 case 30023:
 case 30024:
 case 30025:
 case 30026:
 case 30027:
 case 30028:
  return "ega15.cpx";

 case 3021:
 case 30005:
 case 30022:
 case 30031:
 case 30032:
  return "ega16.cpx";
 case 862:
 case 864:
 case 30034:
 case 30033:
 case 30039:
 case 30040:
  return "ega17.cpx";
 case 856:
 case 3846:
 case 3848:
  return "ega18.cpx";
 default:
  return ((void*)0);
 }
}
