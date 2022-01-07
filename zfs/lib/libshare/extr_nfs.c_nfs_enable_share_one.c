
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int get_linux_hostspec (char const*,char**) ;
 int libzfs_run_process (char*,char**,int ) ;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,char const*,...) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
nfs_enable_share_one(const char *sharepath, const char *host,
    const char *security, const char *access, void *pcookie)
{
 int rc;
 char *linuxhost, *hostpath, *opts;
 const char *linux_opts = (const char *)pcookie;
 char *argv[6];



 rc = get_linux_hostspec(host, &linuxhost);

 if (rc < 0)
  exit(1);

 hostpath = malloc(strlen(linuxhost) + 1 + strlen(sharepath) + 1);

 if (hostpath == ((void*)0)) {
  free(linuxhost);

  exit(1);
 }

 sprintf(hostpath, "%s:%s", linuxhost, sharepath);

 free(linuxhost);

 if (linux_opts == ((void*)0))
  linux_opts = "";

 opts = malloc(4 + strlen(security) + 4 + strlen(linux_opts) + 1);

 if (opts == ((void*)0))
  exit(1);

 sprintf(opts, "sec=%s,%s,%s", security, access, linux_opts);





 argv[0] = "/usr/sbin/exportfs";
 argv[1] = "-i";
 argv[2] = "-o";
 argv[3] = opts;
 argv[4] = hostpath;
 argv[5] = ((void*)0);

 rc = libzfs_run_process(argv[0], argv, 0);

 free(hostpath);
 free(opts);

 if (rc < 0)
  return (SA_SYSTEM_ERR);
 else
  return (SA_OK);
}
