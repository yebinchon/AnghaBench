
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 char* filebase ;
 int perror (char*) ;
 int pickidx () ;
 int remove (char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void *
cleaner(void *a)
{
 char buf[256];
 int idx, len, ret;

 len = strlen(filebase) + 5;

 for (;;) {
  idx = pickidx();
  (void) snprintf(buf, len, "%s.%03d", filebase, idx);
  ret = remove(buf);
  if (ret < 0 && errno != ENOENT)
   (void) perror("removing file");
 }

 return (((void*)0));
}
