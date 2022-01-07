
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_guest_exceptions ;

int
vcpu_trace_exceptions(void)
{
 return (trace_guest_exceptions);
}
