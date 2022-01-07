
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;
typedef scalar_t__ (* synctex_decoder_t ) (int *,void*) ;


 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_NOT_OK ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 scalar_t__ _synctex_match_string (int *,char const*) ;
 scalar_t__ _synctex_next_line (int *) ;
 scalar_t__ stub1 (int *,void*) ;

synctex_status_t _synctex_scan_named(synctex_scanner_t scanner,const char * name,void * value_ref,synctex_decoder_t decoder) {
 synctex_status_t status = 0;
 if (((void*)0) == scanner || ((void*)0) == name || ((void*)0) == value_ref || ((void*)0) == decoder) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
not_found:
 status = _synctex_match_string(scanner,name);
 if (status<SYNCTEX_STATUS_NOT_OK) {
  return status;
 } else if (status == SYNCTEX_STATUS_NOT_OK) {
  status = _synctex_next_line(scanner);
  if (status<SYNCTEX_STATUS_OK) {
   return status;
  }
  goto not_found;
 }

 return (*decoder)(scanner,value_ref);
}
