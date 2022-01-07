
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * ObjectDir (int *,int ) ;
 int TabPageAttrs ;

__attribute__((used)) static PyObject *
TabPageDir(PyObject *self)
{
    return ObjectDir(self, TabPageAttrs);
}
