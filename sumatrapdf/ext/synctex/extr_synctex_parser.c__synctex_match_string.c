
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ z_off_t ;
typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;


 int SEEK_SET ;
 size_t SYNCTEX_CUR ;
 size_t SYNCTEX_END ;
 scalar_t__ SYNCTEX_FILE ;
 size_t SYNCTEX_START ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_EOF ;
 scalar_t__ SYNCTEX_STATUS_ERROR ;
 scalar_t__ SYNCTEX_STATUS_NOT_OK ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 scalar_t__ _synctex_buffer_get_available_size (int *,size_t*) ;
 int _synctex_error (char*) ;
 scalar_t__ gzseek (scalar_t__,scalar_t__,int ) ;
 scalar_t__ gztell (scalar_t__) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

synctex_status_t _synctex_match_string(synctex_scanner_t scanner, const char * the_string) {
 size_t tested_len = 0;
 size_t remaining_len = 0;
 size_t available = 0;
 synctex_status_t status = 0;
 if (((void*)0) == scanner || ((void*)0) == the_string) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
 remaining_len = strlen(the_string);
 if (0 == remaining_len) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }

 available = remaining_len;
 status = _synctex_buffer_get_available_size(scanner,&available);
 if (status<SYNCTEX_STATUS_EOF) {
  return status;
 }

 if (available>=remaining_len) {

  if (strncmp((char *)SYNCTEX_CUR,the_string,remaining_len)) {
   return SYNCTEX_STATUS_NOT_OK;
  }
return_OK:

  SYNCTEX_CUR += remaining_len;
  return SYNCTEX_STATUS_OK;
 } else if (strncmp((char *)SYNCTEX_CUR,the_string,available)) {

   return SYNCTEX_STATUS_NOT_OK;
 } else if (SYNCTEX_FILE) {


  z_off_t offset = 0L;

  the_string += available;

  remaining_len -= available;
  tested_len += available;
  SYNCTEX_CUR += available;
  if (0 == remaining_len) {

   return tested_len;
  }






  offset = gztell(SYNCTEX_FILE);

  available = SYNCTEX_CUR - SYNCTEX_START;




  offset -= available;
more_characters:




  available = remaining_len;
  status = _synctex_buffer_get_available_size(scanner,&available);
  if (status<SYNCTEX_STATUS_EOF) {
   return status;
  }
  if (available==0) {

return_NOT_OK:
   if (offset != gzseek(SYNCTEX_FILE,offset,SEEK_SET)) {

    _synctex_error("can't seek file");
    return SYNCTEX_STATUS_ERROR;
   }


   SYNCTEX_CUR = SYNCTEX_END;
   return SYNCTEX_STATUS_NOT_OK;
  }
  if (available<remaining_len) {

   if (strncmp((char *)SYNCTEX_CUR,the_string,available)) {

    goto return_NOT_OK;
   }

   the_string += available;

   remaining_len -= available;
   tested_len += available;
   SYNCTEX_CUR += available;
   if (0 == remaining_len) {

    return SYNCTEX_STATUS_OK;
   }
   goto more_characters;
  }

  if (strncmp((char *)SYNCTEX_CUR,the_string,remaining_len)) {

   goto return_NOT_OK;
  }
  goto return_OK;
 } else {

  return SYNCTEX_STATUS_EOF;
 }
}
