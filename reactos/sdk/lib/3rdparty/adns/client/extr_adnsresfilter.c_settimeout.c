
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtoul (char const*,char**,int ) ;
 int timeout ;
 int usageerr (char*) ;

__attribute__((used)) static void settimeout(const char *arg) {
  char *ep;
  timeout= strtoul(arg,&ep,0);
  if (*ep) usageerr("invalid timeout");
}
