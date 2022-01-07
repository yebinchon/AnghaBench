
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
struct TYPE_6__ {int iflags; } ;


 int adns__debug (TYPE_1__*,int,int ,char*,char const*) ;
 int adns_if_noenv ;
 char* instrum_getenv (TYPE_1__*,char const*) ;
 int readconfigtext (TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static void readconfigenvtext(adns_state ads, const char *envvar) {
  const char *textdata;

  if (ads->iflags & adns_if_noenv) {
    adns__debug(ads,-1,0,"not checking environment variable `%s'",envvar);
    return;
  }
  textdata= instrum_getenv(ads,envvar);
  if (textdata) readconfigtext(ads,textdata,envvar);
}
