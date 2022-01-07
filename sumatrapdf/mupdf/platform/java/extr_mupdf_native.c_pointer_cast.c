
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jlong ;



__attribute__((used)) static inline void *pointer_cast(jlong l)
{
 return (void *)(intptr_t)l;
}
