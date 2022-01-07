
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_ps_bucket ;


 int free (int *) ;

__attribute__((used)) static void stb_bucket_free(stb_ps_bucket *b)
{
   free(b);
}
