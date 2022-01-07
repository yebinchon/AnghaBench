
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;


 char* SYNCTEX_CUR ;
 char* SYNCTEX_END ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_EOF ;
 scalar_t__ SYNCTEX_STATUS_ERROR ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 size_t UINT_MAX ;
 scalar_t__ _synctex_buffer_get_available_size (int *,size_t*) ;
 int _synctex_error (char*,...) ;
 int free (char*) ;
 scalar_t__ memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;

synctex_status_t _synctex_decode_string(synctex_scanner_t scanner, char ** value_ref) {
 char * end = ((void*)0);
 size_t current_size = 0;
 size_t new_size = 0;
 size_t len = 0;
 size_t available = 0;
 synctex_status_t status = 0;
 if (((void*)0) == scanner || ((void*)0) == value_ref) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }

 if (SYNCTEX_CUR>=SYNCTEX_END) {
  available = 1;
  status = _synctex_buffer_get_available_size(scanner,&available);
  if (status < 0) {
   return status;
  }
  if (0 == available) {
   return SYNCTEX_STATUS_EOF;
  }
 }



 end = SYNCTEX_CUR;
 * value_ref = ((void*)0);

next_character:
 if (end<SYNCTEX_END) {
  if (*end == '\n') {

   len = end - SYNCTEX_CUR;
   if (current_size>UINT_MAX-len-1) {



    return UINT_MAX-len-1 - current_size;
   }
   new_size = current_size+len;



   if ((* value_ref = realloc(* value_ref,new_size+1)) != ((void*)0)) {
    if (memcpy((*value_ref)+current_size,SYNCTEX_CUR,len)) {

     if (new_size > 0 && (*value_ref)[new_size - 1] == '\r')
      new_size--;
     (* value_ref)[new_size]='\0';
     SYNCTEX_CUR += len;
     return SYNCTEX_STATUS_OK;
    }
    free(* value_ref);
    * value_ref = ((void*)0);
    _synctex_error("could not copy memory (1).");
    return SYNCTEX_STATUS_ERROR;
   }
   _synctex_error("could not allocate memory (1).");
   return SYNCTEX_STATUS_ERROR;
  } else {
   ++end;
   goto next_character;
  }
 } else {

  len = SYNCTEX_END - SYNCTEX_CUR;
  if (current_size>UINT_MAX-len-1) {

   _synctex_error("limit reached (missing %i).",current_size-(UINT_MAX-len-1));
   return SYNCTEX_STATUS_ERROR;
  }
  new_size = current_size+len;
  if ((* value_ref = realloc(* value_ref,new_size+1)) != ((void*)0)) {
   if (memcpy((*value_ref)+current_size,SYNCTEX_CUR,len)) {
    (* value_ref)[new_size]='\0';
    SYNCTEX_CUR = SYNCTEX_END;
    return SYNCTEX_STATUS_OK;
   }
   free(* value_ref);
   * value_ref = ((void*)0);
   _synctex_error("could not copy memory (2).");
   return SYNCTEX_STATUS_ERROR;
  }

  _synctex_error("could not allocate memory (2).");
  return SYNCTEX_STATUS_ERROR;
 }
}
