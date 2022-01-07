
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vcddev_toc_t ;


 int * calloc (int,int) ;

__attribute__((used)) static inline vcddev_toc_t * vcddev_toc_New( void )
{
    return calloc(1, sizeof(vcddev_toc_t));
}
