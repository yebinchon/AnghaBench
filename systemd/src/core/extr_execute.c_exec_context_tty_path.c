
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* tty_path; scalar_t__ stdio_as_fds; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;

__attribute__((used)) static const char *exec_context_tty_path(const ExecContext *context) {
        assert(context);

        if (context->stdio_as_fds)
                return ((void*)0);

        if (context->tty_path)
                return context->tty_path;

        return "/dev/console";
}
