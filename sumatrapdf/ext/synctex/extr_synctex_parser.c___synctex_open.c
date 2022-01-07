
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_io_mode_t ;
typedef scalar_t__ synctex_bool_t ;
typedef int * gzFile ;


 int ENOENT ;
 scalar_t__ _synctex_copy_with_quoting_last_path_component (char*,char**,size_t) ;
 int _synctex_error (char*,...) ;
 char* _synctex_get_io_mode_name (int ) ;
 int _synctex_strip_last_path_extension (char*) ;
 int errno ;
 int free (char*) ;
 int gzclose (int *) ;
 int * gzopen (char*,char const*) ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ rename (char*,char*) ;
 char* strcat (char*,char*) ;
 char* strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int synctex_io_gz_mask ;
 char* synctex_suffix ;
 char* synctex_suffix_gz ;

int __synctex_open(const char * output, char ** synctex_name_ref, gzFile * file_ref, synctex_bool_t add_quotes, synctex_io_mode_t * io_mode_ref) {
 if (synctex_name_ref && file_ref && io_mode_ref) {

        char * synctex_name = ((void*)0);
        gzFile the_file = ((void*)0);
        char * quoteless_synctex_name = ((void*)0);
  size_t size = 0;
        synctex_io_mode_t io_mode = *io_mode_ref;
  const char * mode = _synctex_get_io_mode_name(io_mode);

  size = strlen(output)+strlen(synctex_suffix)+strlen(synctex_suffix_gz)+1;
  synctex_name = (char *)malloc(size);
  if (((void*)0) == synctex_name) {
   _synctex_error("!  __synctex_open: Memory problem (1)\n");
   return 1;
  }


  if (synctex_name != strcpy(synctex_name,output)) {
   _synctex_error("!  __synctex_open: Copy problem\n");
return_on_error:
   free(synctex_name);
   free(quoteless_synctex_name);
   return 2;
  }

  _synctex_strip_last_path_extension(synctex_name);
  if (!strlen(synctex_name)) {
   goto return_on_error;
  }

  if (add_quotes) {
   char * quoted = ((void*)0);
   if (_synctex_copy_with_quoting_last_path_component(synctex_name,&quoted,size) || (((void*)0) == quoted)) {

    goto return_on_error;
   }
   quoteless_synctex_name = synctex_name;
   synctex_name = quoted;
  }

  if (synctex_name != strcat(synctex_name,synctex_suffix)){
   _synctex_error("!  __synctex_open: Concatenation problem (can't add suffix '%s')\n",synctex_suffix);
   goto return_on_error;
  }

  if (quoteless_synctex_name && (quoteless_synctex_name != strcat(quoteless_synctex_name,synctex_suffix))){
   free(quoteless_synctex_name);
   quoteless_synctex_name = ((void*)0);
  }
  if (((void*)0) == (the_file = gzopen(synctex_name,mode))) {

   if (errno != ENOENT) {

    _synctex_error("SyncTeX: could not open %s, error %i\n",synctex_name,errno);
    goto return_on_error;
   }

   if (synctex_name != strcat(synctex_name,synctex_suffix_gz)){
    _synctex_error("!  __synctex_open: Concatenation problem (can't add suffix '%s')\n",synctex_suffix_gz);
    goto return_on_error;
   }
   io_mode |= synctex_io_gz_mask;
   mode = _synctex_get_io_mode_name(io_mode);

   if (quoteless_synctex_name && (quoteless_synctex_name != strcat(quoteless_synctex_name,synctex_suffix_gz))){
    free(quoteless_synctex_name);
    quoteless_synctex_name = ((void*)0);
   }
   if (((void*)0) == (the_file = gzopen(synctex_name,mode))) {

    if (errno != ENOENT) {

     _synctex_error("SyncTeX: could not open %s, error %i\n",synctex_name,errno);
    }
    goto return_on_error;
   }
  }


  if (quoteless_synctex_name) {
   gzclose(the_file);
   if (rename(synctex_name,quoteless_synctex_name)) {
    _synctex_error("SyncTeX: could not rename %s to %s, error %i\n",synctex_name,quoteless_synctex_name,errno);

    if (((void*)0) == (the_file = gzopen(synctex_name,mode))) {

     if (errno != ENOENT) {


      _synctex_error("SyncTeX: could not open again %s, error %i\n",synctex_name,errno);
     }
     goto return_on_error;
    }
   } else {

    if (((void*)0) == (the_file = gzopen(quoteless_synctex_name,mode))) {

     if (errno != ENOENT) {

      _synctex_error("SyncTeX: could not open renamed %s, error %i\n",quoteless_synctex_name,errno);
     }
     goto return_on_error;
    }

    free(synctex_name);
    synctex_name = quoteless_synctex_name;
    quoteless_synctex_name = ((void*)0);
   }
  }

        * file_ref = the_file;
        * io_mode_ref = io_mode;
        * synctex_name_ref = synctex_name;
  return 0;
 }
 return 3;
}
