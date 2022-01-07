
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KILL_PROCESS_GROUP_GROUP_ENV_VAR ;
 int SUBREAPER_ENV_VAR ;
 int VERBOSITY_ENV_VAR ;
 int atoi (char*) ;
 char* getenv (int ) ;
 int kill_process_group ;
 int subreaper ;
 int verbosity ;

int parse_env() {






 if (getenv(KILL_PROCESS_GROUP_GROUP_ENV_VAR) != ((void*)0)) {
  kill_process_group++;
 }

 char* env_verbosity = getenv(VERBOSITY_ENV_VAR);
 if (env_verbosity != ((void*)0)) {
  verbosity = atoi(env_verbosity);
 }

 return 0;
}
