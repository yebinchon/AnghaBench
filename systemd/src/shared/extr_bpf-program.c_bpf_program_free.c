
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int attached_path; int instructions; int kernel_fd; } ;
typedef TYPE_1__ BPFProgram ;


 int assert (TYPE_1__*) ;
 int bpf_program_cgroup_detach (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;

__attribute__((used)) static BPFProgram *bpf_program_free(BPFProgram *p) {
        assert(p);
        (void) bpf_program_cgroup_detach(p);

        safe_close(p->kernel_fd);
        free(p->instructions);
        free(p->attached_path);

        return mfree(p);
}
