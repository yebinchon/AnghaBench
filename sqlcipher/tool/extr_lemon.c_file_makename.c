
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lemon {char* filename; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int lemonStrlen (char const*) ;
 int lemon_strcat (char*,char const*) ;
 int lemon_strcpy (char*,char const*) ;
 scalar_t__ malloc (int) ;
 char const* outputDir ;
 int stderr ;
 char* strrchr (char*,char) ;

char *file_makename(struct lemon *lemp, const char *suffix)
{
  char *name;
  char *cp;
  char *filename = lemp->filename;
  int sz;

  if( outputDir ){
    cp = strrchr(filename, '/');
    if( cp ) filename = cp + 1;
  }
  sz = lemonStrlen(filename);
  sz += lemonStrlen(suffix);
  if( outputDir ) sz += lemonStrlen(outputDir) + 1;
  sz += 5;
  name = (char*)malloc( sz );
  if( name==0 ){
    fprintf(stderr,"Can't allocate space for a filename.\n");
    exit(1);
  }
  name[0] = 0;
  if( outputDir ){
    lemon_strcpy(name, outputDir);
    lemon_strcat(name, "/");
  }
  lemon_strcat(name,filename);
  cp = strrchr(name,'.');
  if( cp ) *cp = 0;
  lemon_strcat(name,suffix);
  return name;
}
