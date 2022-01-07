
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* runner ) (int ,void*,int *) ;
typedef int (* rangeinitializer ) (void*) ;
typedef int char_u ;
typedef int PyObject ;
typedef int PyGILState_STATE ;
typedef scalar_t__ Ptr ;
typedef int GrafPtr ;


 int CODEC_ERROR_HANDLER ;
 scalar_t__ ENC_OPT ;
 int GetPort (int *) ;
 int LC_NUMERIC ;
 int PyBytes_AsString (int *) ;
 int PyGILState_Ensure () ;
 int PyGILState_Release (int ) ;
 scalar_t__ PyMac_Initialize ;
 int * PyUnicode_AsEncodedString (int *,char*,int ) ;
 int * PyUnicode_Decode (char const*,int ,char*,int ) ;
 int Py_XDECREF (int *) ;
 scalar_t__ Python3_Init () ;
 int PythonIO_Flush () ;
 int Python_Lock_Vim () ;
 int Python_Release_Vim () ;
 scalar_t__ STRCMP (char*,char*) ;
 int SetPort (int ) ;
 scalar_t__ kUnresolvedCFragSymbolAddress ;
 char* setlocale (int ,char*) ;
 int strlen (char const*) ;
 int vim_free (char*) ;
 scalar_t__ vim_strsave (int *) ;

__attribute__((used)) static void
DoPyCommand(const char *cmd, rangeinitializer init_range, runner run, void *arg)
{






    PyObject *cmdstr;
    PyObject *cmdbytes;
    PyGILState_STATE pygilstate;







    if (Python3_Init())
 goto theend;

    init_range(arg);

    Python_Release_Vim();
    pygilstate = PyGILState_Ensure();



    cmdstr = PyUnicode_Decode(cmd, strlen(cmd),
     (char *)ENC_OPT, CODEC_ERROR_HANDLER);
    cmdbytes = PyUnicode_AsEncodedString(cmdstr, "utf-8", CODEC_ERROR_HANDLER);
    Py_XDECREF(cmdstr);

    run(PyBytes_AsString(cmdbytes), arg, &pygilstate);
    Py_XDECREF(cmdbytes);

    PyGILState_Release(pygilstate);
    Python_Lock_Vim();
    PythonIO_Flush();




theend:
    return;
}
