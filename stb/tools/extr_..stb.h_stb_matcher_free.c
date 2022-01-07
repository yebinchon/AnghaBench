
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_matcher ;


 int stb_free (int *) ;

void stb_matcher_free(stb_matcher *f)
{
   stb_free(f);
}
