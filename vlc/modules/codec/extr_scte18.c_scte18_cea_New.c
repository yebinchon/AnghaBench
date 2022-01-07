
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scte18_cea_t ;


 int * calloc (int,int) ;

__attribute__((used)) static inline scte18_cea_t * scte18_cea_New()
{
    return calloc( 1, sizeof(scte18_cea_t) );
}
