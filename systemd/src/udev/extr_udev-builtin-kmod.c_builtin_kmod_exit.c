
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int kmod_unref (int ) ;
 int log_debug (char*) ;

__attribute__((used)) static void builtin_kmod_exit(void) {
        log_debug("Unload module index");
        ctx = kmod_unref(ctx);
}
