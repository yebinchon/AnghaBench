
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* nul; char* base; char* end; int error; void* arg0; } ;


 TYPE_1__ SPT ;
 char** environ ;
 int errno ;
 char* getprogname () ;
 char* program_invocation_name ;
 char* program_invocation_short_name ;
 int setprogname (char*) ;
 int spt_copyargs (int,char**) ;
 int spt_copyenv (char**) ;
 void* strdup (char*) ;
 int strlen (char*) ;

void spt_init(int argc, char *argv[]) {
        char **envp = environ;
 char *base, *end, *nul, *tmp;
 int i, error;

 if (!(base = argv[0]))
  return;

 nul = &base[strlen(base)];
 end = nul + 1;

 for (i = 0; i < argc || (i >= argc && argv[i]); i++) {
  if (!argv[i] || argv[i] < end)
   continue;

  end = argv[i] + strlen(argv[i]) + 1;
 }

 for (i = 0; envp[i]; i++) {
  if (envp[i] < end)
   continue;

  end = envp[i] + strlen(envp[i]) + 1;
 }

 if (!(SPT.arg0 = strdup(argv[0])))
  goto syerr;
 if ((error = spt_copyenv(envp)))
  goto error;

 if ((error = spt_copyargs(argc, argv)))
  goto error;

 SPT.nul = nul;
 SPT.base = base;
 SPT.end = end;

 return;
syerr:
 error = errno;
error:
 SPT.error = error;
}
