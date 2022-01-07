
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int fwrite (char*,int,size_t,int ) ;
 int memset (char*,int ,int) ;
 int out ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
write_line(char *line)
{
  char buf[200];

  memset(buf, 0, sizeof(buf));
  strcpy(buf, line);

  buf[strlen(buf)] = '\r';
  buf[strlen(buf)] = '\n';

  (void)fwrite(&buf[0], 1, strlen(buf), out);
}
