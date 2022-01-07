
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PYTHON_API_VERSION ;
 int PySys_SetArgv (int,char**) ;
 int Py_InitModule4 (char*,int ,char*,int *,int ) ;
 int VimMethods ;
 scalar_t__ init_sys_path () ;
 scalar_t__ init_types () ;
 scalar_t__ populate_module (int ) ;
 int vim_module ;

__attribute__((used)) static int
PythonMod_Init(void)
{

    static char *(argv[2]) = {"/must>not&exist/foo", ((void*)0)};

    if (init_types())
 return -1;


    PySys_SetArgv(1, argv);

    vim_module = Py_InitModule4("vim", VimMethods, (char *)((void*)0),
    (PyObject *)((void*)0), PYTHON_API_VERSION);

    if (populate_module(vim_module))
 return -1;

    if (init_sys_path())
 return -1;

    return 0;
}
