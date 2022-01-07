
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_vorbis_alloc ;
typedef int stb_vorbis ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,unsigned int,int ) ;
 unsigned int ftell (int *) ;
 int * stb_vorbis_open_file_section (int *,int,int*,int const*,unsigned int) ;

stb_vorbis * stb_vorbis_open_file(FILE *file, int close_on_free, int *error, const stb_vorbis_alloc *alloc)
{
   unsigned int len, start;
   start = (unsigned int) ftell(file);
   fseek(file, 0, SEEK_END);
   len = (unsigned int) (ftell(file) - start);
   fseek(file, start, SEEK_SET);
   return stb_vorbis_open_file_section(file, close_on_free, error, alloc, len);
}
