
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_t ;


 int ARRAY_LEN (char const* const*) ;
 int PROCESS_NONE ;
 int SDL_free (void*) ;
 int adb_execute (char const*,char const* const*,int ) ;
 char* strquote (char const*) ;

process_t
adb_push(const char *serial, const char *local, const char *remote) {
    const char *const adb_cmd[] = {"push", local, remote};
    process_t proc = adb_execute(serial, adb_cmd, ARRAY_LEN(adb_cmd));






    return proc;
}
