
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EF_DIALOGMODE ;

__attribute__((used)) static inline BOOL EDIT_IsInsideDialog(EDITSTATE *es)
{
    return (es->flags & EF_DIALOGMODE);
}
