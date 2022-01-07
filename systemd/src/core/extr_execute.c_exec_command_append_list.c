
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecCommand ;


 int LIST_FIND_TAIL (int ,int *,int *) ;
 int LIST_INSERT_AFTER (int ,int *,int *,int *) ;
 int assert (int *) ;
 int command ;

void exec_command_append_list(ExecCommand **l, ExecCommand *e) {
        ExecCommand *end;

        assert(l);
        assert(e);

        if (*l) {

                LIST_FIND_TAIL(command, *l, end);
                LIST_INSERT_AFTER(command, *l, end, e);
        } else
              *l = e;
}
