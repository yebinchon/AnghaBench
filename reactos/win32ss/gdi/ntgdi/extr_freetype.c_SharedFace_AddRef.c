
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RefCount; } ;
typedef TYPE_1__* PSHARED_FACE ;


 int ASSERT_FREETYPE_LOCK_HELD () ;

__attribute__((used)) static void
SharedFace_AddRef(PSHARED_FACE Ptr)
{
    ASSERT_FREETYPE_LOCK_HELD();

    ++Ptr->RefCount;
}
