
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int attribute_t ;


 int free (int *) ;

__attribute__((used)) static inline void FreeAttribute (attribute_t *a)
{
    free (a);
}
