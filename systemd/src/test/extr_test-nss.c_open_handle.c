
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 int dlerror () ;
 void* dlopen (char const*,int) ;
 int log_error (char*,char const*,int ) ;
 char* strjoina (char const*,char const*,char const*,...) ;

__attribute__((used)) static void* open_handle(const char* dir, const char* module, int flags) {
        const char *path = ((void*)0);
        void *handle;

        if (dir)
                path = strjoina(dir, "/libnss_", module, ".so.2");
        if (!path || access(path, F_OK) < 0)
                path = strjoina("libnss_", module, ".so.2");

        handle = dlopen(path, flags);
        if (!handle)
                log_error("Failed to load module %s: %s", module, dlerror());
        return handle;
}
