
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;


 int heap_free (int ) ;

__attribute__((used)) static inline void strfreeA( LPSTR str )
{
    heap_free( str );
}
