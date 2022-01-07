
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ListAttrs ;
 int * ObjectDir (int *,int ) ;

__attribute__((used)) static PyObject *
ListDir(PyObject *self)
{
    return ObjectDir(self, ListAttrs);
}
