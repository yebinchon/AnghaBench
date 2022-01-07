
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_status_t ;
typedef int * synctex_scanner_t ;


 size_t SYNCTEX_BUFFER_SIZE ;
 char* SYNCTEX_CUR ;
 char* SYNCTEX_END ;
 int * SYNCTEX_FILE ;
 char* SYNCTEX_START ;
 int SYNCTEX_STATUS_BAD_ARGUMENT ;
 int SYNCTEX_STATUS_EOF ;
 int SYNCTEX_STATUS_ERROR ;
 int SYNCTEX_STATUS_OK ;
 int Z_ERRNO ;
 int _synctex_error (char*,int,...) ;
 int errno ;
 int gzclose (int *) ;
 char* gzerror (int *,int*) ;
 int gzread (int *,void*,size_t) ;
 int memmove (char*,char*,size_t) ;
 size_t size ;

synctex_status_t _synctex_buffer_get_available_size(synctex_scanner_t scanner, size_t * size_ptr) {
   size_t available = 0;
 if (((void*)0) == scanner || ((void*)0) == size_ptr) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }

 if ((* size_ptr)>SYNCTEX_BUFFER_SIZE){
  (* size_ptr) = SYNCTEX_BUFFER_SIZE;
 }
 available = SYNCTEX_END - SYNCTEX_CUR;
 if ((* size_ptr)<=available) {

  (* size_ptr) = available;
  return SYNCTEX_STATUS_OK;
 }
 if (SYNCTEX_FILE) {


  int already_read = 0;
  if (available) {
   memmove(SYNCTEX_START, SYNCTEX_CUR, available);
  }
  SYNCTEX_CUR = SYNCTEX_START + available;

  already_read = gzread(SYNCTEX_FILE,(void *)SYNCTEX_CUR,SYNCTEX_BUFFER_SIZE - available);
  if (already_read>0) {


   SYNCTEX_END = SYNCTEX_CUR + already_read;



   * SYNCTEX_END = '\0';
   SYNCTEX_CUR = SYNCTEX_START;
   (* size_ptr) = SYNCTEX_END - SYNCTEX_CUR;
   return SYNCTEX_STATUS_OK;
  } else if (0>already_read) {

   int errnum = 0;
   const char * error_string = gzerror(SYNCTEX_FILE, &errnum);
   if (Z_ERRNO == errnum) {

    _synctex_error("gzread error from the file system (%i)",errno);
                return SYNCTEX_STATUS_ERROR;
   } else if (errnum) {
    _synctex_error("gzread error (%i:%i,%s)",already_read,errnum,error_string);
                return SYNCTEX_STATUS_ERROR;
   }
  }

        gzclose(SYNCTEX_FILE);
        SYNCTEX_FILE = ((void*)0);
        SYNCTEX_END = SYNCTEX_CUR;
        SYNCTEX_CUR = SYNCTEX_START;
        * SYNCTEX_END = '\0';
        (* size_ptr) = SYNCTEX_END - SYNCTEX_CUR;
        return SYNCTEX_STATUS_EOF;
    }

 (* size_ptr) = available;
  return SYNCTEX_STATUS_EOF;

}
