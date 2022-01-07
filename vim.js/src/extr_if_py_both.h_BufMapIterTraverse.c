
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visitproc ;
typedef int PyObject ;


 int Py_VISIT (int *) ;

__attribute__((used)) static int
BufMapIterTraverse(PyObject *buffer, visitproc visit, void *arg)
{
    if (buffer)
 Py_VISIT(buffer);
    return 0;
}
