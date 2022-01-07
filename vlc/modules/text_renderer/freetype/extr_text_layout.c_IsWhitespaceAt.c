
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p_code_points; scalar_t__* p_types; } ;
typedef TYPE_1__ paragraph_t ;


 scalar_t__ FRIBIDI_TYPE_WS ;

__attribute__((used)) static inline bool IsWhitespaceAt( paragraph_t *p_paragraph, size_t i )
{
    return ( p_paragraph->p_code_points[ i ] == ' '



    );
}
