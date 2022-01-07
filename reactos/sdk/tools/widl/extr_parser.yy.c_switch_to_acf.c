
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int * acf_name ;
 int assert (int) ;
 int error (char*,char*) ;
 int error_loc (char*,char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fopen (char*,char*) ;
 TYPE_1__* import_stack ;
 int import_stack_ptr ;
 int * input_name ;
 int line_number ;
 int mkstemps (char*,int ) ;
 int parser__create_buffer (int *,int ) ;
 int parser__switch_to_buffer (int ) ;
 char* temp_name ;
 int wpp_parse (int *,int *) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void switch_to_acf(void)
{
    int ptr = import_stack_ptr;
    int ret, fd;
    char *name;
    FILE *f;

    assert(import_stack_ptr == 0);

    input_name = acf_name;
    acf_name = ((void*)0);
    line_number = 1;

    name = xstrdup( "widl.XXXXXX" );
    if((fd = mkstemps( name, 0 )) == -1)
        error("Could not generate a temp name from %s\n", name);

    temp_name = name;
    if (!(f = fdopen(fd, "wt")))
        error("Could not open fd %s for writing\n", name);

    ret = wpp_parse(input_name, f);
    fclose(f);
    if (ret) exit(1);

    if((f = fopen(temp_name, "r")) == ((void*)0))
        error_loc("Unable to open %s\n", temp_name);

    import_stack[ptr].state = YY_CURRENT_BUFFER;
    parser__switch_to_buffer(parser__create_buffer(f,YY_BUF_SIZE));
}
