
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_vorbis_alloc ;
typedef int stb_vorbis ;
typedef int FILE ;


 int TRUE ;
 int VORBIS_file_open_failure ;
 int * fopen (char const*,char*) ;
 scalar_t__ fopen_s (int **,char const*,char*) ;
 int * stb_vorbis_open_file (int *,int ,int*,int const*) ;

stb_vorbis * stb_vorbis_open_filename(const char *filename, int *error, const stb_vorbis_alloc *alloc)
{
   FILE *f;




   f = fopen(filename, "rb");

   if (f)
      return stb_vorbis_open_file(f, TRUE, error, alloc);
   if (error) *error = VORBIS_file_open_failure;
   return ((void*)0);
}
