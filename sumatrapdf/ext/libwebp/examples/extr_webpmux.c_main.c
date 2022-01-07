
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Config ;


 int DeleteConfig (int *) ;
 int FREE_WARGV_AND_RETURN (int) ;
 int GET_WARGV_OR_NULL () ;
 int INIT_WARGV (int,char const**) ;
 int InitializeConfig (int,char const**,int *,int ) ;
 int PrintHelp () ;
 int Process (int *) ;

int main(int argc, const char* argv[]) {
  Config config;
  int ok;

  INIT_WARGV(argc, argv);

  ok = InitializeConfig(argc - 1, argv + 1, &config, GET_WARGV_OR_NULL());
  if (ok) {
    ok = Process(&config);
  } else {
    PrintHelp();
  }
  DeleteConfig(&config);
  FREE_WARGV_AND_RETURN(!ok);
}
