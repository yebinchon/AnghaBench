
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_ps ;


 int GetArray (int *) ;
 int GetBucket (int *) ;
 int GetHash (int *) ;




 int free (int ) ;
 int stb_bucket_free (int ) ;

void stb_ps_delete(stb_ps *ps)
{
    switch (3 & (int)(size_t) ps) {
      case 129: break;
      case 130: stb_bucket_free(GetBucket(ps)); break;
      case 131 : free(GetArray(ps)); break;
      case 128 : free(GetHash(ps)); break;
   }
}
