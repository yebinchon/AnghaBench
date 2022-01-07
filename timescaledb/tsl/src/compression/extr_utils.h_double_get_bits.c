
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int StaticAssertStmt (int,char*) ;
 int memcpy (int *,double*,int) ;

__attribute__((used)) static inline uint64
double_get_bits(double in)
{
 uint64 out;
 StaticAssertStmt(sizeof(uint64) == sizeof(double), "double is not IEEE double wide float");

 memcpy(&out, &in, sizeof(uint64));
 return out;
}
