
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_3__ {int path; int type; } ;
typedef TYPE_1__ PathSpec ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int PATH_EXISTS ;
 int PATH_EXISTS_GLOB ;
 int log_warning_errno (int,char*,int ) ;
 int mkdir_p_label (int ,int ) ;

__attribute__((used)) static void path_spec_mkdir(PathSpec *s, mode_t mode) {
        int r;

        if (IN_SET(s->type, PATH_EXISTS, PATH_EXISTS_GLOB))
                return;

        r = mkdir_p_label(s->path, mode);
        if (r < 0)
                log_warning_errno(r, "mkdir(%s) failed: %m", s->path);
}
