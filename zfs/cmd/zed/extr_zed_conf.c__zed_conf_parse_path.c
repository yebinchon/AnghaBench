
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int PATH_MAX ;
 int assert (int ) ;
 int errno ;
 int free (char*) ;
 int getcwd (char*,int) ;
 char* strdup (char const*) ;
 int strerror (int ) ;
 int strlcat (char*,char const*,int) ;
 int zed_log_die (char*,int ) ;

__attribute__((used)) static void
_zed_conf_parse_path(char **resultp, const char *path)
{
 char buf[PATH_MAX];

 assert(resultp != ((void*)0));
 assert(path != ((void*)0));

 if (*resultp)
  free(*resultp);

 if (path[0] == '/') {
  *resultp = strdup(path);
 } else if (!getcwd(buf, sizeof (buf))) {
  zed_log_die("Failed to get current working dir: %s",
      strerror(errno));
 } else if (strlcat(buf, "/", sizeof (buf)) >= sizeof (buf)) {
  zed_log_die("Failed to copy path: %s", strerror(ENAMETOOLONG));
 } else if (strlcat(buf, path, sizeof (buf)) >= sizeof (buf)) {
  zed_log_die("Failed to copy path: %s", strerror(ENAMETOOLONG));
 } else {
  *resultp = strdup(buf);
 }
 if (!*resultp)
  zed_log_die("Failed to copy path: %s", strerror(ENOMEM));
}
