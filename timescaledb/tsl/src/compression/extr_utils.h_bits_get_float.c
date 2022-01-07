
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int StaticAssertStmt (int,char*) ;
 int memcpy (float*,int *,int) ;

__attribute__((used)) static inline float
bits_get_float(uint32 bits)
{
 float out;
 StaticAssertStmt(sizeof(float) == sizeof(uint32), "float is not IEEE double wide float");

 memcpy(&out, &bits, sizeof(uint32));
 return out;
}
