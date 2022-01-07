
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int NORMAL_WRITE_TH_NUM ;
 int err (int,char*) ;
 int exit (int) ;
 int map_writer ;
 int normal_writer ;
 int printf (char*,char*) ;
 scalar_t__ pthread_create (int *,int *,int ,char*) ;
 int pthread_join (int ,int *) ;

int
main(int argc, char **argv)
{
 pthread_t map_write_tid;
 pthread_t normal_write_tid[NORMAL_WRITE_TH_NUM];
 int i = 0;

 if (argc != 3) {
  (void) printf("usage: %s <normal write file name>"
      "<map write file name>\n", argv[0]);
  exit(1);
 }

 for (i = 0; i < NORMAL_WRITE_TH_NUM; i++) {
  if (pthread_create(&normal_write_tid[i], ((void*)0), normal_writer,
      argv[1])) {
   err(1, "pthread_create normal_writer failed.");
  }
 }

 if (pthread_create(&map_write_tid, ((void*)0), map_writer, argv[2])) {
  err(1, "pthread_create map_writer failed.");
 }


 pthread_join(map_write_tid, ((void*)0));
 return (0);
}
