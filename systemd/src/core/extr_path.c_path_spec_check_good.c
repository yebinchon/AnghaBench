
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int previous_exists; int path; } ;
typedef TYPE_1__ PathSpec ;


 int ENOENT ;
 int F_OK ;





 int access (int ,int ) ;
 int dir_is_empty (int ) ;
 int glob_exists (int ) ;

__attribute__((used)) static bool path_spec_check_good(PathSpec *s, bool initial) {
        bool good = 0;

        switch (s->type) {

        case 130:
                good = access(s->path, F_OK) >= 0;
                break;

        case 129:
                good = glob_exists(s->path) > 0;
                break;

        case 131: {
                int k;

                k = dir_is_empty(s->path);
                good = !(k == -ENOENT || k > 0);
                break;
        }

        case 132:
        case 128: {
                bool b;

                b = access(s->path, F_OK) >= 0;
                good = !initial && b != s->previous_exists;
                s->previous_exists = b;
                break;
        }

        default:
                ;
        }

        return good;
}
