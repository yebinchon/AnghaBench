
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ ME_Run ;


 char const* debugstr_wn (int ,int ) ;
 int get_text (TYPE_1__ const*,int ) ;

__attribute__((used)) static inline const char *debugstr_run( const ME_Run *run )
{
    return debugstr_wn( get_text( run, 0 ), run->len );
}
