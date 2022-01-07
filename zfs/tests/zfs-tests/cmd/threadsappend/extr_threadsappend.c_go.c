
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int memset (char*,int,int) ;
 int outfd ;
 int perror (char*) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void *
go(void *data)
{
 int ret, i = 0, n = *(int *)data;
 char buf[8192] = {0};
 (void) memset(buf, n, sizeof (buf));

 for (i = 0; i < 80; i++) {
  ret = write(outfd, buf, sizeof (buf));
  if (ret != sizeof (buf))
   perror("write");
 }
 return (((void*)0));
}
