
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_free (int *) ;

__attribute__((used)) static void
zio_abd_free(void *abd, size_t size)
{
 abd_free((abd_t *)abd);
}
