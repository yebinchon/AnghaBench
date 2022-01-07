
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ ME_Run ;
typedef int ME_Context ;


 int FALSE ;
 int ME_CharFromPointContext (int *,int,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int find_split_point( ME_Context *c, int cx, ME_Run *run )
{
    if (!run->len || cx <= 0) return 0;
    return ME_CharFromPointContext( c, cx, run, FALSE, FALSE );
}
