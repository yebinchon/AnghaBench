
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT_PTR ;


 int TlsSetValue (int ,void*) ;
 int indent_tls_index ;

__attribute__((used)) static inline void set_indent_level( INT_PTR level )
{
    TlsSetValue( indent_tls_index, (void *)level );
}
