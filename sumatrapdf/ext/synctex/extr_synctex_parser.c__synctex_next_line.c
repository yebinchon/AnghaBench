
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;


 char* SYNCTEX_CUR ;
 char* SYNCTEX_END ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 scalar_t__ _synctex_buffer_get_available_size (int *,size_t*) ;

synctex_status_t _synctex_next_line(synctex_scanner_t scanner) {
 synctex_status_t status = SYNCTEX_STATUS_OK;
 size_t available = 0;
 if (((void*)0) == scanner) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
infinite_loop:
 while(SYNCTEX_CUR<SYNCTEX_END) {
  if (*SYNCTEX_CUR == '\n') {
   ++SYNCTEX_CUR;
   available = 1;
   return _synctex_buffer_get_available_size(scanner, &available);
  }
  ++SYNCTEX_CUR;
 }


 available = 1;
 status = _synctex_buffer_get_available_size(scanner, &available);
 if (status<=0) {
  return status;
 }
 goto infinite_loop;
}
