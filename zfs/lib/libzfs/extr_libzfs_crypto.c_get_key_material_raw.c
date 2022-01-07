
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_keyformat_t ;
typedef char uint8_t ;
struct termios {int c_lflag; } ;
struct sigaction {int sa_handler; int sa_mask; scalar_t__ sa_flags; } ;
typedef scalar_t__ boolean_t ;
typedef int FILE ;


 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int ECHONL ;
 int ENOMEM ;
 int SIGINT ;
 int SIGTSTP ;
 int SIG_IGN ;
 int TCSAFLUSH ;
 int WRAPPING_KEY_LEN ;
 scalar_t__ ZFS_KEYFORMAT_RAW ;
 int catch_signal ;
 scalar_t__ caught_interrupt ;
 int errno ;
 int fflush (int ) ;
 int fileno (int *) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 char* get_format_prompt_string (scalar_t__) ;
 int getline (char**,size_t*,int *) ;
 int getpid () ;
 scalar_t__ isatty (int ) ;
 int kill (int ,scalar_t__) ;
 char* malloc (int) ;
 int printf (char*,...) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int stdout ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static int
get_key_material_raw(FILE *fd, const char *fsname, zfs_keyformat_t keyformat,
    boolean_t again, boolean_t newkey, uint8_t **buf, size_t *len_out)
{
 int ret = 0, bytes;
 size_t buflen = 0;
 struct termios old_term, new_term;
 struct sigaction act, osigint, osigtstp;

 *len_out = 0;

 if (isatty(fileno(fd))) {




  caught_interrupt = 0;
  act.sa_flags = 0;
  (void) sigemptyset(&act.sa_mask);
  act.sa_handler = catch_signal;

  (void) sigaction(SIGINT, &act, &osigint);
  act.sa_handler = SIG_IGN;
  (void) sigaction(SIGTSTP, &act, &osigtstp);


  if (fsname != ((void*)0)) {
   (void) printf("%s %s%s for '%s': ",
       (again) ? "Re-enter" : "Enter",
       (newkey) ? "new " : "",
       get_format_prompt_string(keyformat), fsname);
  } else {
   (void) printf("%s %s%s: ",
       (again) ? "Re-enter" : "Enter",
       (newkey) ? "new " : "",
       get_format_prompt_string(keyformat));

  }
  (void) fflush(stdout);


  (void) tcgetattr(fileno(fd), &old_term);

  new_term = old_term;
  new_term.c_lflag &= ~(ECHO | ECHOE | ECHOK | ECHONL);

  ret = tcsetattr(fileno(fd), TCSAFLUSH, &new_term);
  if (ret != 0) {
   ret = errno;
   errno = 0;
   goto out;
  }
 }


 if (keyformat != ZFS_KEYFORMAT_RAW) {
  bytes = getline((char **)buf, &buflen, fd);
  if (bytes < 0) {
   ret = errno;
   errno = 0;
   goto out;
  }


  if ((*buf)[bytes - 1] == '\n') {
   (*buf)[bytes - 1] = '\0';
   bytes--;
  }
 } else {






  *buf = malloc((WRAPPING_KEY_LEN + 1) * sizeof (char));
  if (*buf == ((void*)0)) {
   ret = ENOMEM;
   goto out;
  }

  bytes = fread(*buf, 1, WRAPPING_KEY_LEN + 1, fd);
  if (bytes < 0) {

   free(*buf);
   *buf = ((void*)0);
   ret = errno;
   errno = 0;
   goto out;
  }
 }

 *len_out = bytes;

out:
 if (isatty(fileno(fd))) {

  (void) tcsetattr(fileno(fd), TCSAFLUSH, &old_term);
  (void) sigaction(SIGINT, &osigint, ((void*)0));
  (void) sigaction(SIGTSTP, &osigtstp, ((void*)0));


  if (caught_interrupt != 0) {
   (void) kill(getpid(), caught_interrupt);
  }


  printf("\n");
 }

 return (ret);

}
