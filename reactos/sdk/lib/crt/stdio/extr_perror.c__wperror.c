
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int _strerror (int *) ;
 int fwprintf (int ,char*,char const*,int ) ;
 int stderr ;

void _wperror(const wchar_t *s)
{
  fwprintf(stderr, L"%s: %S\n", s, _strerror(((void*)0)));
}
