
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecRuntime ;


 int exec_runtime_free (int *,int) ;

__attribute__((used)) static void exec_runtime_freep(ExecRuntime **rt) {
        (void) exec_runtime_free(*rt, 0);
}
