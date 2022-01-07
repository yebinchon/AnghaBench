
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RARProgramCode {struct RARProgramCode* globalbackup; struct RARProgramCode* staticdata; int prog; struct RARProgramCode* next; } ;


 int RARDeleteProgram (int ) ;
 int free (struct RARProgramCode*) ;

__attribute__((used)) static void rar_delete_program(struct RARProgramCode *prog)
{
    while (prog) {
        struct RARProgramCode *next = prog->next;
        RARDeleteProgram(prog->prog);
        free(prog->staticdata);
        free(prog->globalbackup);
        free(prog);
        prog = next;
    }
}
