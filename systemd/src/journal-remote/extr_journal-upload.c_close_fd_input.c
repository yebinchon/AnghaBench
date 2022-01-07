
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ timeout; int input; } ;
typedef TYPE_1__ Uploader ;


 int assert (TYPE_1__*) ;
 int safe_close (int ) ;

__attribute__((used)) static void close_fd_input(Uploader *u) {
        assert(u);

        u->input = safe_close(u->input);
        u->timeout = 0;
}
