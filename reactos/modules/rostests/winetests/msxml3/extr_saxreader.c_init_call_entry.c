
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_entry {int column; int line; } ;
typedef int ISAXLocator ;


 int ISAXLocator_getColumnNumber (int *,int *) ;
 int ISAXLocator_getLineNumber (int *,int *) ;
 int memset (struct call_entry*,int ,int) ;

__attribute__((used)) static void init_call_entry(ISAXLocator *locator, struct call_entry *call)
{
    memset(call, 0, sizeof(*call));
    ISAXLocator_getLineNumber(locator, &call->line);
    ISAXLocator_getColumnNumber(locator, &call->column);
}
