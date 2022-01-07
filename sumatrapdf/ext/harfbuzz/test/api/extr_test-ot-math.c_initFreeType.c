
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Error ;


 int FT_Init_FreeType (int *) ;
 int abort () ;
 int ft_library ;

__attribute__((used)) static inline void
initFreeType (void)
{
  FT_Error ft_error;
  if ((ft_error = FT_Init_FreeType (&ft_library)))
    abort();
}
