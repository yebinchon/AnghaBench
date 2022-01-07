
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int force; } ;
typedef TYPE_1__ vlc_object_t ;


 int OpenCommon (TYPE_1__*,int ) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    return OpenCommon( p_this, p_this->force );
}
