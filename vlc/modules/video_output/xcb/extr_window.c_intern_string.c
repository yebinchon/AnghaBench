
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_intern_atom_cookie_t ;
typedef int xcb_connection_t ;


 int strlen (char const*) ;
 int xcb_intern_atom (int *,int ,int ,char const*) ;

__attribute__((used)) static inline
xcb_intern_atom_cookie_t intern_string (xcb_connection_t *c, const char *s)
{
    return xcb_intern_atom (c, 0, strlen (s), s);
}
