
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_io_mode_t ;


 int synctex_io_append_mask ;
 int synctex_io_gz_mask ;

const char * _synctex_get_io_mode_name(synctex_io_mode_t io_mode) {
    static const char * synctex_io_modes[4] = {"r","rb","a","ab"};
    unsigned index = ((io_mode & synctex_io_gz_mask)?1:0) + ((io_mode & synctex_io_append_mask)?2:0);
    return synctex_io_modes[index];
}
