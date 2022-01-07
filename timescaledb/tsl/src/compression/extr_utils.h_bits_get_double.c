
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int StaticAssertStmt (int,char*) ;
 int memcpy (double*,int *,int) ;

__attribute__((used)) static inline double
bits_get_double(uint64 bits)
{
 double out;
 StaticAssertStmt(sizeof(uint64) == sizeof(double), "double is not IEEE double wide float");

 memcpy(&out, &bits, sizeof(double));
 return out;
}
