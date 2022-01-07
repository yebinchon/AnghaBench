
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Done_FreeType (int ) ;
 int ft_library ;

__attribute__((used)) static inline void
cleanupFreeType (void)
{
  FT_Done_FreeType (ft_library);
}
