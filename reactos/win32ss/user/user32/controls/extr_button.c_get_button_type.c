
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LONG ;


 int BS_TYPEMASK ;

__attribute__((used)) static inline UINT get_button_type( LONG window_style )
{
    return (window_style & BS_TYPEMASK);
}
