
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int free (char*) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strip_whitespace (char*) ;

__attribute__((used)) static int detect_brace(FILE *file) {
 int ret = 0;
 int lines = 0;
 long pos = ftell(file);
 char *line = ((void*)0);
 size_t line_size = 0;
 while ((getline(&line, &line_size, file)) != -1) {
  lines++;
  strip_whitespace(line);
  if (*line) {
   if (strcmp(line, "{") == 0) {
    ret = lines;
   }
   break;
  }
 }
 free(line);
 if (ret == 0) {
  fseek(file, pos, SEEK_SET);
 }
 return ret;
}
