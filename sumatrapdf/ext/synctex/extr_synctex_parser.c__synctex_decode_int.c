
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;


 size_t SYNCTEX_BUFFER_MIN_SIZE ;
 char* SYNCTEX_CUR ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_EOF ;
 scalar_t__ SYNCTEX_STATUS_NOT_OK ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 scalar_t__ _synctex_buffer_get_available_size (int *,size_t*) ;
 scalar_t__ strtol (char*,char**,int) ;

synctex_status_t _synctex_decode_int(synctex_scanner_t scanner, int* value_ref) {
 char * ptr = ((void*)0);
 char * end = ((void*)0);
 int result = 0;
 size_t available = 0;
 synctex_status_t status = 0;
 if (((void*)0) == scanner) {
   return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
 available = SYNCTEX_BUFFER_MIN_SIZE;
 status = _synctex_buffer_get_available_size(scanner, &available);
 if (status<SYNCTEX_STATUS_EOF) {
  return status;
 }
 if (available==0) {
  return SYNCTEX_STATUS_EOF;
 }
 ptr = SYNCTEX_CUR;
 if (*ptr==':' || *ptr==',') {
  ++ptr;
  --available;
  if (available==0) {
   return SYNCTEX_STATUS_NOT_OK;
  }
 }
 result = (int)strtol(ptr, &end, 10);
 if (end>ptr) {
  SYNCTEX_CUR = end;
  if (value_ref) {
   * value_ref = result;
  }
  return SYNCTEX_STATUS_OK;
 }
 return SYNCTEX_STATUS_NOT_OK;
}
