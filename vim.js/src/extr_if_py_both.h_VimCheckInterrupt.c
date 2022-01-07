
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyErr_SetNone (int ) ;
 int PyExc_KeyboardInterrupt ;
 scalar_t__ got_int ;

__attribute__((used)) static int
VimCheckInterrupt(void)
{
    if (got_int)
    {
 PyErr_SetNone(PyExc_KeyboardInterrupt);
 return 1;
    }
    return 0;
}
