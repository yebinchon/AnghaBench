
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
 int readconfig (TYPE_1__*,char const*,int) ;

__attribute__((used)) static void readconfigenv(adns_state ads, const char *envvar) {
  const char *filename;

  if (ads->iflags & adns_if_noenv) {
    adns__debug(ads,-1,0,"not checking environment variable `%s'",envvar);
    return;
  }
  filename= instrum_getenv(ads,envvar);
  if (filename) readconfig(ads,filename,1);
}
