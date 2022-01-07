
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecInput ;


 int EXEC_INPUT_TTY ;
 int EXEC_INPUT_TTY_FAIL ;
 int EXEC_INPUT_TTY_FORCE ;
 int IN_SET (int ,int ,int ,int ) ;

__attribute__((used)) static bool is_terminal_input(ExecInput i) {
        return IN_SET(i,
                      EXEC_INPUT_TTY,
                      EXEC_INPUT_TTY_FORCE,
                      EXEC_INPUT_TTY_FAIL);
}
