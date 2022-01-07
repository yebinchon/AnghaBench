
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ errors; void* name; void* temp_name; } ;
typedef TYPE_1__ stb__file_data ;
typedef int name_full ;
typedef int FILE ;


 int assert (int ) ;
 int fclose (int *) ;
 scalar_t__ malloc (int) ;
 int * stb__files ;
 int * stb__fopen (char*,char const*) ;
 int * stb__open_temp_file (char*,char*,char const*) ;
 scalar_t__ stb_fullpath (char*,int,char*) ;
 void* stb_p_strdup (char*) ;
 int stb_ptrmap_add (int *,int *,TYPE_1__*) ;
 int * stb_ptrmap_create () ;
 int strchr (char const*,char) ;

FILE * stb_fopen(char *filename, const char *mode)
{
   FILE *f;
   char name_full[4096];
   char temp_full[sizeof(name_full) + 12];


   if (mode[0] != 'w' && !strchr(mode, '+'))
      return stb__fopen(filename, mode);




   name_full[0] = '\0';
   if (stb_fullpath(name_full, sizeof(name_full), filename)==0)
      return 0;

   f = stb__open_temp_file(temp_full, name_full, mode);
   if (f != ((void*)0)) {
      stb__file_data *d = (stb__file_data *) malloc(sizeof(*d));
      if (!d) { assert(0); fclose(f); return ((void*)0); }
      if (stb__files == ((void*)0)) stb__files = stb_ptrmap_create();
      d->temp_name = stb_p_strdup(temp_full);
      d->name = stb_p_strdup(name_full);
      d->errors = 0;
      stb_ptrmap_add(stb__files, f, d);
      return f;
   }

   return ((void*)0);
}
