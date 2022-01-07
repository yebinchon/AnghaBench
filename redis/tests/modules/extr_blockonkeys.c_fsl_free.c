
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsl_type_free (void*) ;

void fsl_free(void *value) {
    fsl_type_free(value);
}
