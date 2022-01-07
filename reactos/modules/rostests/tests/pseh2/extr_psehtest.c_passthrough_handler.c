
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _EXCEPTION_RECORD {int dummy; } ;
struct _CONTEXT {int dummy; } ;


 int ExceptionContinueSearch ;

__attribute__((used)) static
int passthrough_handler(struct _EXCEPTION_RECORD * e, void * f, struct _CONTEXT * c, void * d)
{
 return ExceptionContinueSearch;
}
