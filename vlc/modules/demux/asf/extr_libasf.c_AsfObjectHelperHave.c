
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool AsfObjectHelperHave( const uint8_t *p_peek, size_t i_peek, const uint8_t *p_current, size_t i_wanted )
{
    if( i_wanted > i_peek )
        return 0;
    return &p_current[i_wanted] <= &p_peek[i_peek];
}
