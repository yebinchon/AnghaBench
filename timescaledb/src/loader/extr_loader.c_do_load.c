
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * post_parse_analyze_hook_type ;
typedef int * PGFunction ;


 scalar_t__ CalledInParallelWorker () ;
 int CharGetDatum (int ) ;
 int DirectFunctionCall1 (int *,int ) ;
 char* EXTENSION_SO ;
 int MAX_SO_NAME_LEN ;
 int MAX_VERSION_LEN ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int POST_LOAD_INIT_FN ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int StrNCpy (int ,char*,int ) ;
 int * extension_post_parse_analyze_hook ;
 char* extension_version () ;
 int * load_external_function (char*,int ,int,int *) ;
 int loaded ;
 int * post_parse_analyze_hook ;
 int snprintf (char*,int,char*,char*,char*) ;
 int soversion ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void inline do_load()
{
 char *version = extension_version();
 char soname[MAX_SO_NAME_LEN];
 post_parse_analyze_hook_type old_hook;

 StrNCpy(soversion, version, MAX_VERSION_LEN);
 if (loaded)
  return;

 snprintf(soname, MAX_SO_NAME_LEN, "%s-%s", EXTENSION_SO, version);





 loaded = 1;






 if (CalledInParallelWorker())
  return;





 if (strcmp(version, "0.9.0") == 0 || strcmp(version, "0.9.1") == 0)
  SetConfigOption("timescaledb.loader_present", "on", PGC_USERSET, PGC_S_SESSION);





 old_hook = post_parse_analyze_hook;
 post_parse_analyze_hook = ((void*)0);







 PG_TRY();
 {
  PGFunction ts_post_load_init =
   load_external_function(soname, POST_LOAD_INIT_FN, 0, ((void*)0));

  if (ts_post_load_init != ((void*)0))
   DirectFunctionCall1(ts_post_load_init, CharGetDatum(0));
 }
 PG_CATCH();
 {
  extension_post_parse_analyze_hook = post_parse_analyze_hook;
  post_parse_analyze_hook = old_hook;
  PG_RE_THROW();
 }
 PG_END_TRY();

 extension_post_parse_analyze_hook = post_parse_analyze_hook;
 post_parse_analyze_hook = old_hook;
}
