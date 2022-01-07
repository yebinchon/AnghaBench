
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line_number; int char_number; int state; int * input; int file; } ;
struct TYPE_3__ {int (* close ) (int ) ;int (* open ) (char const*,int) ;} ;
typedef int FILE ;


 int add_cmdline_defines () ;
 int add_special_defines () ;
 int del_cmdline_defines () ;
 int del_special_defines () ;
 int free (int *) ;
 scalar_t__ pp_get_if_depth () ;
 int pp_pop_define_state () ;
 int pp_pop_if () ;
 int pp_push_define_state () ;
 TYPE_2__ pp_status ;
 int pp_writestring (char*,char const*) ;
 int * pp_xstrdup (char const*) ;
 int ppy_error (char*,char const*) ;
 int * ppy_out ;
 int ppy_parse () ;
 int stdin ;
 int stub1 (char const*,int) ;
 int stub2 (int ) ;
 TYPE_1__* wpp_callbacks ;

int wpp_parse( const char *input, FILE *output )
{
    int ret;

    pp_status.input = ((void*)0);
    pp_status.line_number = 1;
    pp_status.char_number = 1;
    pp_status.state = 0;

    ret = pp_push_define_state();
    if(ret)
        return ret;
    add_cmdline_defines();
    add_special_defines();

    if (!input) pp_status.file = stdin;
    else if (!(pp_status.file = wpp_callbacks->open(input, 1)))
    {
        ppy_error("Could not open %s\n", input);
        del_special_defines();
        del_cmdline_defines();
        pp_pop_define_state();
        return 2;
    }

    pp_status.input = input ? pp_xstrdup(input) : ((void*)0);

    ppy_out = output;
    pp_writestring("# 1 \"%s\" 1\n", input ? input : "");

    ret = ppy_parse();

    if (!ret && pp_status.state) ret = pp_status.state;

    if (input)
    {
 wpp_callbacks->close(pp_status.file);
 free(pp_status.input);
    }

    while (pp_get_if_depth()) pp_pop_if();
    del_special_defines();
    del_cmdline_defines();
    pp_pop_define_state();
    return ret;
}
