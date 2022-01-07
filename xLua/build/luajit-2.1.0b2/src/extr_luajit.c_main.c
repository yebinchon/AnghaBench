
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int argc; char** argv; int status; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int l_message (char*,char*) ;
 int lua_close (int *) ;
 int lua_cpcall (int *,int ,int *) ;
 int * lua_open () ;
 int pmain ;
 int report (int *,int) ;
 TYPE_1__ smain ;

int main(int argc, char **argv)
{
  int status;
  lua_State *L = lua_open();
  if (L == ((void*)0)) {
    l_message(argv[0], "cannot create state: not enough memory");
    return EXIT_FAILURE;
  }
  smain.argc = argc;
  smain.argv = argv;
  status = lua_cpcall(L, pmain, ((void*)0));
  report(L, status);
  lua_close(L);
  return (status || smain.status) ? EXIT_FAILURE : EXIT_SUCCESS;
}
