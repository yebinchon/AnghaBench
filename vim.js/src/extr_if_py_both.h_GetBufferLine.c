
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linenr_T ;
typedef int buf_T ;
typedef int PyObject ;
typedef scalar_t__ PyInt ;


 int FALSE ;
 int * LineToString (char*) ;
 scalar_t__ ml_get_buf (int *,int ,int ) ;

__attribute__((used)) static PyObject *
GetBufferLine(buf_T *buf, PyInt n)
{
    return LineToString((char *)ml_get_buf(buf, (linenr_T)n, FALSE));
}
