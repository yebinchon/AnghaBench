
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding_id; } ;
typedef TYPE_1__ sfnt_name ;
typedef int WORD ;


 int GET_BE_WORD (int ) ;
 scalar_t__ TT_MAC_ID_SIMPLIFIED_CHINESE ;

__attribute__((used)) static inline WORD get_mac_code_page( const sfnt_name *name )
{
    if (GET_BE_WORD(name->encoding_id) == TT_MAC_ID_SIMPLIFIED_CHINESE) return 10008;
    return 10000 + GET_BE_WORD(name->encoding_id);
}
