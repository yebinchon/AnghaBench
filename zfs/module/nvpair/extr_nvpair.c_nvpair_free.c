
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;




 int * EMBEDDED_NVL (int *) ;
 int ** EMBEDDED_NVL_ARRAY (int *) ;
 int NVP_NELEM (int *) ;
 int NVP_TYPE (int *) ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
nvpair_free(nvpair_t *nvp)
{
 switch (NVP_TYPE(nvp)) {
 case 129:
  nvlist_free(EMBEDDED_NVL(nvp));
  break;
 case 128: {
  nvlist_t **nvlp = EMBEDDED_NVL_ARRAY(nvp);
  int i;

  for (i = 0; i < NVP_NELEM(nvp); i++)
   if (nvlp[i] != ((void*)0))
    nvlist_free(nvlp[i]);
  break;
 }
 default:
  break;
 }
}
