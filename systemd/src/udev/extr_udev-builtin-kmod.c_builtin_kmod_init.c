
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ ctx ;
 int kmod_load_resources (scalar_t__) ;
 scalar_t__ kmod_new (int *,int *) ;
 int kmod_set_log_fn (scalar_t__,int ,int *) ;
 int log_debug (char*) ;
 int udev_kmod_log ;

__attribute__((used)) static int builtin_kmod_init(void) {
        if (ctx)
                return 0;

        ctx = kmod_new(((void*)0), ((void*)0));
        if (!ctx)
                return -ENOMEM;

        log_debug("Load module index");
        kmod_set_log_fn(ctx, udev_kmod_log, ((void*)0));
        kmod_load_resources(ctx);
        return 0;
}
