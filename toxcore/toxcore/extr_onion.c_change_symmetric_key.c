
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; int secret_symmetric_key; } ;
typedef TYPE_1__ Onion ;


 int KEY_REFRESH_INTERVAL ;
 scalar_t__ is_timeout (int ,int ) ;
 int new_symmetric_key (int ) ;
 int unix_time () ;

__attribute__((used)) static void change_symmetric_key(Onion *onion)
{
    if (is_timeout(onion->timestamp, KEY_REFRESH_INTERVAL)) {
        new_symmetric_key(onion->secret_symmetric_key);
        onion->timestamp = unix_time();
    }
}
