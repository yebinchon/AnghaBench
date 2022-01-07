
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KMOD_RESOURCES_OK ;
 int ctx ;
 scalar_t__ kmod_validate_resources (int ) ;
 int log_debug (char*) ;

__attribute__((used)) static bool builtin_kmod_validate(void) {
        log_debug("Validate module index");
        if (!ctx)
                return 0;
        return (kmod_validate_resources(ctx) != KMOD_RESOURCES_OK);
}
