
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ ftruncate (int,size_t) ;
 char* getenv (char*) ;
 char* malloc (size_t) ;
 int mkstemp (char*) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int stderr ;
 int strlen (char const*) ;
 int sway_set_cloexec (int,int) ;

__attribute__((used)) static int create_pool_file(size_t size, char **name) {
 static const char template[] = "sway-client-XXXXXX";
 const char *path = getenv("XDG_RUNTIME_DIR");
 if (path == ((void*)0)) {
  fprintf(stderr, "XDG_RUNTIME_DIR is not set\n");
  return -1;
 }

 size_t name_size = strlen(template) + 1 + strlen(path) + 1;
 *name = malloc(name_size);
 if (*name == ((void*)0)) {
  fprintf(stderr, "allocation failed\n");
  return -1;
 }
 snprintf(*name, name_size, "%s/%s", path, template);

 int fd = mkstemp(*name);
 if (fd < 0) {
  return -1;
 }

 if (!sway_set_cloexec(fd, 1)) {
  close(fd);
  return -1;
 }

 if (ftruncate(fd, size) < 0) {
  close(fd);
  return -1;
 }

 return fd;
}
