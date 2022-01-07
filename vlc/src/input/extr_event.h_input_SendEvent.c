
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_input_event {int dummy; } ;
typedef int input_thread_t ;
struct TYPE_3__ {int events_data; int (* events_cb ) (int *,struct vlc_input_event const*,int ) ;} ;
typedef TYPE_1__ input_thread_private_t ;


 TYPE_1__* input_priv (int *) ;
 int stub1 (int *,struct vlc_input_event const*,int ) ;

__attribute__((used)) static inline void input_SendEvent(input_thread_t *p_input,
                                   const struct vlc_input_event *event)
{
    input_thread_private_t *priv = input_priv(p_input);
    if(priv->events_cb)
        priv->events_cb(p_input, event, priv->events_data);
}
