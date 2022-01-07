
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef scalar_t__ FLOAT ;


 scalar_t__ floor (scalar_t__) ;

__attribute__((used)) static __inline INT GDI_ROUND(FLOAT val)
{
   return (int)floor(val + 0.5);
}
