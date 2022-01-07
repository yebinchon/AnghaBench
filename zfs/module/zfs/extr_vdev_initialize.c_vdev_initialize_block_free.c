
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_free (int *) ;

__attribute__((used)) static void
vdev_initialize_block_free(abd_t *data)
{
 abd_free(data);
}
