
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jbig2Allocator ;


 int free (void*) ;

__attribute__((used)) static void
jbig2_default_free(Jbig2Allocator *allocator, void *p)
{
    free(p);
}
