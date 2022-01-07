
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int BufferAttrs ;
 int * ObjectDir (int *,int ) ;

__attribute__((used)) static PyObject *
BufferDir(PyObject *self)
{
    return ObjectDir(self, BufferAttrs);
}
