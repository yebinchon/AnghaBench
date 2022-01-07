
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jlong ;



__attribute__((used)) static inline jlong jlong_cast(const void *p)
{
 return (jlong)(intptr_t)p;
}
