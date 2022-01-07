
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int progdir ;
typedef int pid_t ;
typedef int lua_State ;
typedef int FILE ;


 int CCP_WIN_A_TO_POSIX ;
 int CTL_KERN ;
 int GetModuleFileNameA (int *,char*,int) ;
 int KERN_PROC ;
 int KERN_PROC_PATHNAME ;
 scalar_t__* LUA_DIRSEP ;
 int LUA_EXEC_DIR ;
 scalar_t__ _NSGetExecutablePath (char*,int*) ;
 int _PATH_MAX ;
 int cygwin_conv_path (int ,char*,char*,int) ;
 int fread (char*,int,int,int *) ;
 int getpid () ;
 int luaL_error (int *,char*) ;
 int luaL_gsub (int *,int ,int ,char*) ;
 int lua_remove (int *,int) ;
 int lua_tostring (int *,int) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int readlink (char*,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,int) ;
 int sysctl (int*,int,char*,size_t*,int *,int ) ;

__attribute__((used)) static void setprogdir(lua_State *L) {
  char progdir[_PATH_MAX + 1];
  char *lb;
  int nsize = sizeof(progdir)/sizeof(char);
  int n = 0;
  n = readlink("/proc/self/exe", progdir, nsize);
  if (n > 0) progdir[n] = 0;
  if (n == 0 || n == nsize || (lb = strrchr(progdir, (int)LUA_DIRSEP[0])) == ((void*)0))
    luaL_error(L, "unable to get process executable path");
  else {
    *lb = '\0';


    luaL_gsub(L, lua_tostring(L, -1), LUA_EXEC_DIR, progdir);
    lua_remove(L, -2);
  }
}
