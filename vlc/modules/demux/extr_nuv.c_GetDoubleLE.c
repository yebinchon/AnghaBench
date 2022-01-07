
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (double*,void*,int) ;

__attribute__((used)) static inline void GetDoubleLE( double *pd, void *src )
{







    memcpy( pd, src, 8 );

}
