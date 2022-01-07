
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int FunctionAttrs ;
 int * ObjectDir (int *,int ) ;

__attribute__((used)) static PyObject *
FunctionDir(PyObject *self)
{
    return ObjectDir(self, FunctionAttrs);
}
