
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyInt ;
typedef int BufferObject ;


 int * RBSlice (int *,int ,int ,int,int) ;

__attribute__((used)) static PyObject *
BufferSlice(BufferObject *self, PyInt lo, PyInt hi)
{
    return RBSlice(self, lo, hi, 1, -1);
}
