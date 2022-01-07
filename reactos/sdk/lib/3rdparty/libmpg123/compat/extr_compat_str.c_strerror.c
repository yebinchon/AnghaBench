
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *strerror(int errnum)
{
 extern int sys_nerr;
 extern char *sys_errlist[];

 return (errnum < sys_nerr) ? sys_errlist[errnum] : "";
}
