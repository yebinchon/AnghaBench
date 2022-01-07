
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;


 scalar_t__ EACCES ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOTDIR ;
 scalar_t__ ERANGE ;
 int PATH_MAX ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISDIR (int) ;
 int _PATH_TMP ;
 scalar_t__ errno ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ getuid () ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ mkdir (char*,int ) ;
 int * realpath (char*,char*) ;
 char const* strerror (scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int xasprintf (char**,char*,char*,...) ;

__attribute__((used)) static char *
make_label(const char *label, char **cause)
{
 char *base, resolved[PATH_MAX], *path, *s;
 struct stat sb;
 uid_t uid;

 *cause = ((void*)0);

 if (label == ((void*)0))
  label = "default";
 uid = getuid();

 if ((s = getenv("TMUX_TMPDIR")) != ((void*)0) && *s != '\0')
  xasprintf(&base, "%s/tmux-%ld", s, (long)uid);
 else
  xasprintf(&base, "%s/tmux-%ld", _PATH_TMP, (long)uid);
 if (realpath(base, resolved) == ((void*)0) &&
     strlcpy(resolved, base, sizeof resolved) >= sizeof resolved) {
  errno = ERANGE;
  free(base);
  goto fail;
 }
 free(base);

 if (mkdir(resolved, S_IRWXU) != 0 && errno != EEXIST)
  goto fail;
 if (lstat(resolved, &sb) != 0)
  goto fail;
 if (!S_ISDIR(sb.st_mode)) {
  errno = ENOTDIR;
  goto fail;
 }
 if (sb.st_uid != uid || (sb.st_mode & S_IRWXO) != 0) {
  errno = EACCES;
  goto fail;
 }
 xasprintf(&path, "%s/%s", resolved, label);
 return (path);

fail:
 xasprintf(cause, "error creating %s (%s)", resolved, strerror(errno));
 return (((void*)0));
}
