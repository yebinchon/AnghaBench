
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ protocol; int clsid; int cf; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int TRUE ;
 TYPE_1__* object_creation ;
 int register_namespace (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void init_session(void)
{
    unsigned int i;

    for(i = 0; i < ARRAY_SIZE(object_creation); i++) {
        if(object_creation[i].protocol)
            register_namespace(object_creation[i].cf, object_creation[i].clsid,
                                      object_creation[i].protocol, TRUE);
    }
}
