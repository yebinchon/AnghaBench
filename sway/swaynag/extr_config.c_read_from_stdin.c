
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int free (char*) ;
 int getline (char**,size_t*,int ) ;
 char* realloc (char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int stdin ;

__attribute__((used)) static char *read_from_stdin(void) {
 char *buffer = ((void*)0);
 size_t buffer_len = 0;
 char *line = ((void*)0);
 size_t line_size = 0;
 ssize_t nread;
 while ((nread = getline(&line, &line_size, stdin)) != -1) {
  buffer = realloc(buffer, buffer_len + nread + 1);
  snprintf(&buffer[buffer_len], nread + 1, "%s", line);
  buffer_len += nread;
 }
 free(line);

 while (buffer && buffer[buffer_len - 1] == '\n') {
  buffer[--buffer_len] = '\0';
 }

 return buffer;
}
