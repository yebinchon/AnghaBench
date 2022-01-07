
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ msi_custom_action_info ;



__attribute__((used)) static void addref_custom_action_data( msi_custom_action_info *info )
{
    info->refs++;
 }
