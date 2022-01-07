
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int g_printerr (int ) ;

__attribute__((used)) static void
print_denial_message()
{
 g_printerr(_(
  "Access to the current location was denied by GeoClue!\n"
  "Make sure that location services are enabled and that"
  " Redshift is permitted\nto use location services."
  " See https://github.com/jonls/redshift#faq for more\n"
  "information.\n"));
}
