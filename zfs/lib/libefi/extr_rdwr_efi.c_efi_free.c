
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_gpt {int dummy; } ;


 int free (struct dk_gpt*) ;

void
efi_free(struct dk_gpt *ptr)
{
 free(ptr);
}
