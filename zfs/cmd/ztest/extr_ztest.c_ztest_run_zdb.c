
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zo_verbose; } ;
typedef int FILE ;


 int MAXNAMELEN ;
 int MAXPATHLEN ;
 int UMEM_NOFAIL ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WTERMSIG (int) ;
 int fatal (int ,char*,char*,int ) ;
 int * fgets (char*,int,int *) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int printf (char*,char*) ;
 char* spa_config_path ;
 int sprintf (char*,char*,char*,char*,char*,char*,char*) ;
 char* strstr (char*,char*) ;
 char* umem_alloc (int const,int ) ;
 int umem_free (char*,int const) ;
 scalar_t__ ztest_dump_core ;
 int ztest_get_zdb_bin (char*,int const) ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static void
ztest_run_zdb(char *pool)
{
 int status;
 char *bin;
 char *zdb;
 char *zbuf;
 const int len = MAXPATHLEN + MAXNAMELEN + 20;
 FILE *fp;

 bin = umem_alloc(len, UMEM_NOFAIL);
 zdb = umem_alloc(len, UMEM_NOFAIL);
 zbuf = umem_alloc(1024, UMEM_NOFAIL);

 ztest_get_zdb_bin(bin, len);

 (void) sprintf(zdb,
     "%s -bcc%s%s -G -d -Y -U %s %s",
     bin,
     ztest_opts.zo_verbose >= 3 ? "s" : "",
     ztest_opts.zo_verbose >= 4 ? "v" : "",
     spa_config_path,
     pool);

 if (ztest_opts.zo_verbose >= 5)
  (void) printf("Executing %s\n", strstr(zdb, "zdb "));

 fp = popen(zdb, "r");

 while (fgets(zbuf, 1024, fp) != ((void*)0))
  if (ztest_opts.zo_verbose >= 3)
   (void) printf("%s", zbuf);

 status = pclose(fp);

 if (status == 0)
  goto out;

 ztest_dump_core = 0;
 if (WIFEXITED(status))
  fatal(0, "'%s' exit code %d", zdb, WEXITSTATUS(status));
 else
  fatal(0, "'%s' died with signal %d", zdb, WTERMSIG(status));
out:
 umem_free(bin, len);
 umem_free(zdb, len);
 umem_free(zbuf, 1024);
}
