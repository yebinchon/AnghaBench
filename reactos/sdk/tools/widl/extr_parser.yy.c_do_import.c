
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imports {struct imports* next; void* name; } ;
struct TYPE_2__ {char* temp_name; char* input_name; int line_number; int state; } ;
typedef int FILE ;


 int MAX_IMPORT_DEPTH ;
 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int error (char*,char*) ;
 int error_loc (char*,...) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 struct imports* first_import ;
 int * fopen (char*,char*) ;
 TYPE_1__* import_stack ;
 int import_stack_ptr ;
 char* input_name ;
 int line_number ;
 int mkstemps (char*,int ) ;
 int parser__create_buffer (int *,int ) ;
 int parser__switch_to_buffer (int ) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (void*,char*) ;
 char* temp_name ;
 char* wpp_find_include (char*,char*) ;
 int wpp_parse (char*,int *) ;
 struct imports* xmalloc (int) ;
 void* xstrdup (char*) ;

int do_import(char *fname)
{
    FILE *f;
    char *path, *name;
    struct imports *import;
    int ptr = import_stack_ptr;
    int ret, fd;

    import = first_import;
    while (import && strcmp(import->name, fname))
        import = import->next;
    if (import) return 0;

    import = xmalloc(sizeof(struct imports));
    import->name = xstrdup(fname);
    import->next = first_import;
    first_import = import;



    if (strchr( fname, '/' ) || strchr( fname, '\\' ))
        path = xstrdup( fname );
    else if (!(path = wpp_find_include( fname, input_name )))
        error_loc("Unable to open include file %s\n", fname);

    if (import_stack_ptr == MAX_IMPORT_DEPTH)
        error_loc("Exceeded max import depth\n");

    import_stack[ptr].temp_name = temp_name;
    import_stack[ptr].input_name = input_name;
    import_stack[ptr].line_number = line_number;
    import_stack_ptr++;
    input_name = path;
    line_number = 1;

    name = xstrdup( "widl.XXXXXX" );
    if((fd = mkstemps( name, 0 )) == -1)
        error("Could not generate a temp name from %s\n", name);

    temp_name = name;
    if (!(f = fdopen(fd, "wt")))
        error("Could not open fd %s for writing\n", name);

    ret = wpp_parse( path, f );
    fclose( f );
    if (ret) exit(1);

    if((f = fopen(temp_name, "r")) == ((void*)0))
        error_loc("Unable to open %s\n", temp_name);

    import_stack[ptr].state = YY_CURRENT_BUFFER;
    parser__switch_to_buffer(parser__create_buffer(f,YY_BUF_SIZE));
    return 1;
}
