
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * stream; } ;
typedef TYPE_1__ RTF_Info ;
typedef int ME_InStream ;



void RTFSetEditStream(RTF_Info *info, ME_InStream *stream)
{
        info->stream = stream;
}
