
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum exc_class { ____Placeholder_exc_class } exc_class ;


 int EXC_BENIGN ;
 int EXC_CONTRIBUTORY ;
 int EXC_PAGEFAULT ;







 int KASSERT (int,char*) ;



 int VM_INTINFO_TYPE ;
 int VM_INTINFO_VALID ;

__attribute__((used)) static enum exc_class
exception_class(uint64_t info)
{
 int type, vector;

 KASSERT(info & VM_INTINFO_VALID, ("intinfo must be valid: %#llx", info));
 type = info & VM_INTINFO_TYPE;
 vector = info & 0xff;


 switch (type) {
 case 130:
 case 128:
 case 129:
  return (EXC_BENIGN);
 default:
  break;
 }

 switch (vector) {
 case 134:
 case 131:
  return (EXC_PAGEFAULT);
 case 137:
 case 132:
 case 135:
 case 133:
 case 136:
  return (EXC_CONTRIBUTORY);
 default:
  return (EXC_BENIGN);
 }
}
