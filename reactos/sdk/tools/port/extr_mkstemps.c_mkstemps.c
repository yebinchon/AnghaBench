
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int gcc_uint64_t ;


 int O_BINARY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int TMP_MAX ;
 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int open (char*,int,int,...) ;
 int printf (char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
mkstemps (
     char *template,
     int suffix_len)
{
  static const char letters[]
    = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  static gcc_uint64_t value;



  char *XXXXXX;
  size_t len;
  int count;

  len = strlen (template);

  if ((int) len < 6 + suffix_len
      || strncmp (&template[len - 6 - suffix_len], "XXXXXX", 6))
    {
      printf("wrong parameter\n");
      return -1;
    }

  XXXXXX = &template[len - 6 - suffix_len];






  value += getpid ();


  for (count = 0; count < TMP_MAX; ++count)
    {
      gcc_uint64_t v = value;
      int fd;


      XXXXXX[0] = letters[v % 62];
      v /= 62;
      XXXXXX[1] = letters[v % 62];
      v /= 62;
      XXXXXX[2] = letters[v % 62];
      v /= 62;
      XXXXXX[3] = letters[v % 62];
      v /= 62;
      XXXXXX[4] = letters[v % 62];
      v /= 62;
      XXXXXX[5] = letters[v % 62];




      fd = open (template, O_RDWR|O_CREAT|O_EXCL|O_BINARY, 0600);

      if (fd >= 0)

 return fd;




      value += 7777;
    }


  template[0] = '\0';
  return -1;
}
