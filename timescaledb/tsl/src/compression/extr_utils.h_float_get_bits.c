
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int StaticAssertStmt (int,char*) ;
 int memcpy (int *,float*,int) ;

__attribute__((used)) static inline uint32
float_get_bits(float in)
{
 uint32 out;
 StaticAssertStmt(sizeof(float) == sizeof(uint32), "float is not IEEE double wide float");

 memcpy(&out, &in, sizeof(uint32));
 return out;
}
