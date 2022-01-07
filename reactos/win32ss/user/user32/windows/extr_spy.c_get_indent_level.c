
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT_PTR ;


 int TlsGetValue (int ) ;
 int indent_tls_index ;

__attribute__((used)) static inline INT_PTR get_indent_level(void)
{
    return (INT_PTR)TlsGetValue( indent_tls_index );
}
