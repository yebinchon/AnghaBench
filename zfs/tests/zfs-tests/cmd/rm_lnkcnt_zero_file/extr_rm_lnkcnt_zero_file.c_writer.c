
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int filebase ;
 int open (int ,int,int) ;
 int perror (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void *
writer(void *a)
{
 int *fd = (int *)a;
 int ret;

 for (;;) {
  if (*fd != -1)
   (void) close (*fd);

  *fd = open(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
  if (*fd == -1) {
   perror("fail to open test file, refreshing it");
   continue;
  }

  ret = write(*fd, "test\n", 5);
  if (ret != 5)
   perror("writing file");
 }

 return (((void*)0));
}
