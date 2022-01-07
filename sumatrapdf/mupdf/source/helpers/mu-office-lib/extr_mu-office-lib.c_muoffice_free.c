
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Pal_Mem_free (void*) ;

__attribute__((used)) static void muoffice_free(void *arg, void *ptr)
{
 Pal_Mem_free(ptr);
}
