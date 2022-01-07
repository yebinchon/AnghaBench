
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {char* sopt; char* lopt; } ;


 int usageerr (char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void noninvert(const struct optioninfo *oip) {
  usageerr("option %s%s%s%s%s may not be inverted",
    oip->sopt ? "-" : "", oip->sopt ? oip->sopt : "",
    oip->lopt && oip->sopt ? " / " : "",
    oip->lopt ? "--" : "", oip->lopt ? oip->lopt : "");
}
