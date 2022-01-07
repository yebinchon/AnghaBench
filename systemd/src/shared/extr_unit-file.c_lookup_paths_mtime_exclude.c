
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int runtime_control; int persistent_control; int transient; int generator_late; int generator_early; int generator; } ;
typedef TYPE_1__ LookupPaths ;


 scalar_t__ streq_ptr (char const*,int ) ;

__attribute__((used)) static bool lookup_paths_mtime_exclude(const LookupPaths *lp, const char *path) {


        return streq_ptr(path, lp->generator) ||
               streq_ptr(path, lp->generator_early) ||
               streq_ptr(path, lp->generator_late) ||
               streq_ptr(path, lp->transient) ||
               streq_ptr(path, lp->persistent_control) ||
               streq_ptr(path, lp->runtime_control);
}
