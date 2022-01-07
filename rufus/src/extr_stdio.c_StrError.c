
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 char* _StrError (int ) ;
 int toggle_default_locale () ;

const char* StrError(DWORD error_code, BOOL use_default_locale)
{
 const char* ret;
 if (use_default_locale)
  toggle_default_locale();
 ret = _StrError(error_code);
 if (use_default_locale)
  toggle_default_locale();
 return ret;
}
