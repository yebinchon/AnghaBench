
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* sa_bonus; } ;
typedef TYPE_2__ sa_handle_t ;
struct TYPE_4__ {int db_object; } ;



uint64_t
sa_handle_object(sa_handle_t *hdl)
{
 return (hdl->sa_bonus->db_object);
}
