
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _EXCEPTION_POINTERS {TYPE_1__* ExceptionRecord; scalar_t__ ContextRecord; } ;
typedef int argv ;
typedef int ULONG_PTR ;
struct TYPE_2__ {scalar_t__ ExceptionCode; scalar_t__ ExceptionFlags; scalar_t__ NumberParameters; int ExceptionInformation; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ memcmp (int ,int const*,int) ;
 int return_positive () ;

__attribute__((used)) static
int verify_xpointers(struct _EXCEPTION_POINTERS * ep, DWORD code, DWORD flags, DWORD argc, const ULONG_PTR * argv, int * ret, int filter)
{
 *ret =
  ep &&
  ep->ExceptionRecord &&
  ep->ContextRecord &&
  ep->ExceptionRecord->ExceptionCode == code &&
  ep->ExceptionRecord->ExceptionFlags == flags &&
  ep->ExceptionRecord->NumberParameters == argc &&
  (argv || !argc) &&
  memcmp(ep->ExceptionRecord->ExceptionInformation, argv, sizeof(argv[0]) * argc) == 0;

 if(*ret)
  *ret = return_positive();

 return filter;
}
