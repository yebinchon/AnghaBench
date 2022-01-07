
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_wellknowntype; } ;
typedef TYPE_1__ MP4_Box_data_data_t ;


 scalar_t__ DATA_WKT_BMP ;
 scalar_t__ DATA_WKT_JPEG ;
 scalar_t__ DATA_WKT_PNG ;

__attribute__((used)) static bool imageTypeCompatible( const MP4_Box_data_data_t *p_data )
{
    return p_data && (
    p_data->e_wellknowntype == DATA_WKT_PNG ||
    p_data->e_wellknowntype == DATA_WKT_JPEG ||
    p_data->e_wellknowntype == DATA_WKT_BMP );
}
